# Energy_Detection(Fixed Threshold)

### 原理：

**原理图：**

![image-20230924104515397](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230924104515397.png)

**代码：**

![image-20230924102325764](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230924102325764.png)

**阈值计算公式：**
$$
\lambda ^* =& \sigma_w^2(1 + \cfrac{Q^{-1}(P_f)}{\sqrt{N/2}})\cdot\cfrac{M}{N}) \cdot N + \epsilon  \\
=& \cfrac{M}{N} \sigma_w^2(N + \sqrt{2N}Q^{-1}(Pf))
$$
其中$\sigma_w^2$是环境噪声平均功率，$P_f$是虚警概率，$M$是子带的大小，$N$为$FFT$的大小，$\epsilon$是定点数运算的的校正因子，固定为10。

### 设计前的问题

（1）原论文里直接调用usrp库函数，手动输入进行阈值设置，我这里直接设置一个固定值。但是怎么计算的？好像得搞懂公式的计算，先看一下。

**阈值设置：**

![image-20230924164421539](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230924164421539.png)

**阈值计算：**

其中$Q(x) = \cfrac{1}{\sqrt{2\pi}} \int_x^{+\infty} e^{-t^2 / 2}dt$是标准正态分布的右尾函数，又叫互补累计分布函数。

![image-20230925114642699](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230925114642699.png)

$erfc(x) = \cfrac{2}{\sqrt{\pi}} \int_x^{\infty} e^{-t^2}dt = 2Q(\sqrt{2}x)$

令$y = erfc(x)$，所以$y = 2Q(\sqrt{2}x)$，求反函数互换$x，y$，$x = 2Q(\sqrt{2}y)$，所以$Q^{-1}(\cfrac{x}{2}) = \sqrt{2}y = \sqrt{2}\,erfc(x)$，那么令$x = 2x$，则$Q^{-1}(x) = \sqrt{2} \, erfc(2x)$。

取$P_f$的值计算即可，带入$\lambda ^* = \cfrac{M}{N} \sigma_w^2(N + \sqrt{2N}Q^{-1}(Pf))$。

（2）windows_size的M，如果要设置一般为多少？

​			文中设置了$M = 2, 8......$，等值。

### 设计：

**（1）Control unit ED**

![image-20230924112331176](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230924112331176.png)

**两个FSM：**

* 第一个FSM：Control Unit Detection，用于控制信号能量的计算与比较。有10个状态：RESET、WAIT_DATA，ACCUMULATE_1、 ACCUMULATE_2、 ACCUMULATE_3、 COMPARE、 WAIT_COMP、 END_COMP and RESET_ACC。

  RESET后处于等数据状态WAIT_DATA，直到第一个数据到达第一个FIFO，第一个数据到达后FIF0的empty由1到0（表示FIFO不再为空了），然后进入到ACCUMULATE_1状态，首先pop_fin（第一个fiford_en）和en_cnt1使能，一个时钟周期后（因为），ce_ew（CE）和push_fout（第二个fifo的wr_en）被激活，直到cnt1_tc为1（counter_detection）计数器被计满，进入 ACCUMULATE 3状态，然后进入COMPARE状态，累加器激活减法，然后进入WAIT_COMP状态，这时计数器置位，累加器时钟使能依然置1。下一个状态就是END_COMP，当比较结果存进FF中，并且end_sig信号激活通知下一个状态机。

​			开始下一个子频带的处理之前先检查FIFO，直到为空。第一个状态机处理子频带的同时会将数据存到另一个FIFO。

* 第二个FSM：Control Unit Packing，用于打包检测结果与SQM bin的值，把SQM的值减为31位，检测结果放到最高有效位（msb）。等到end_sig信号到来后，这个状态机开始从FIFO弹数据直到子代的所有bin都出来。

​			有两个状态RESET、POP DATA。首先RESET，然后等待end_sig信号，如果为1说明已经比较完毕，那么开始往外输			出数据，en_cnt2激活couter_packing，pop_fout激活第二个FIFO开始输出数据，如果tc_cnt2置1，说明子代数据输			出完毕。

**（2）Datapath Unit ED**

![image-20230924105305161](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230924105305161.png)

**Accumulator：**用于计算和比较。

**两个FIFO：（全部是IP核）**

* 第一个FIFO：写使能wr_en由dv_sq_m控制，读操作由Control unit ED控制；
* 第二个FIFO：写使能wr_en与读使能rd_en都由Control unit ED控制。

**两个计数器：**

* 计数器counter_detection：计数子频带用于检测，window_size的大小。
* 计数器counter_packing：计数子频带用于打包。


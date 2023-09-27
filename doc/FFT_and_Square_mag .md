# FFT单元

总体架构。

![image-20230826080522334](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230826080522334.png)

数据流向：

![image-20230906195812675](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230906195812675.png)

ppt中说：一个代表真实数据，一个代表数据是否有效，写tb的时候可以作为输入。



### FFT单元实现

文中**IP核**的选择：LogiCORE IP FFT v7.1,  Radix-2 Burst I\O.

* 1024点，每个点32位，**高16位为虚部，低16位位实部。**

包括单元：

* 两个RAM存放时域数据，一个读一个写，大小为1024*32
* 一个FFT IP核，使用Radix-2 Burst I\O，1024点
* 一个控制单元控制各个信号

源码结构：

FFT

* fft_ip_core（ip核）

  * input：
    * xn[31:0]：输入数据
    * clk：时钟
    * sclr：reset fft
    * scale_sch_we：设置缩放因子，**scaled是压缩比例参数，由于多点运算的FFT的计算量比较大，合理设置scaled可以减少资源的消耗；**
    * start：开始fft
    * unload：开始卸数据

  * output:
    * xk[31:0]：输出结果
    * e_done_fft_core：完成任务后，fft发出的信号
    * dv_fft_core：是否还有数据，

* ram_0，ram_1（ip核）

* control_unit_fft  （控制单元）
  * fft_controller（fft控制单元）
    * CU_fft_controller（文中：Control Unit FFT Controller）
    
    * datapath_fft_controller（文中：DP FFT Controller）
    
    * > 这里主要是有几个信号不明白：
      >
      > input:
      >
      > dv_fft_core：?（由FFT IP核输出）fft输出的结果数据是否已经有效了，然后一直unload数据，直到最后一个数据接收完成，dv_fft_core置0，然后说明结果都unload完了，然后可以进行下一次fft了。
      >
      > e_done_fft_core：?（由FFT IP核输出）完成FFT后，FFT ip核发出的信号，然后就进入unload。
      >
      > clk：时钟
      >
      > sclr：清除
      >
      > ready：数据准备好
      >
      > **output**：
      >
      > sclr_fft_core：？（输入IP核，也就是说作为控制信号）用于reset fft ip核。
      >
      > scale_sch_we_fft_core：？（输入IP核，也就是说作为控制信号）**scaled是压缩比例参数，由于多点运算的FFT的计算量比较大，合理设置scaled可以减少资源的消耗；**
      >
      > start_fft_core：？（输入IP核，也就是说作为控制信号）ready好了，就开始fft，需要先往IP核里导入数据，等导入满了之后（N = 1024），那么就进入等待处理
      >
      > unload_fft_core：？（输入IP核，也就是说作为控制信号）告诉fft核要往外输出数据了，
    
      下面是FFT的算法状态机：
      
      ![image-20230907090540078](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230907090540078.png)
    
    ![image-20230907103818445](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230907103818445.png)
    
  * ram_wr_controller（ram读写控制单元）：
    
    * CU_ram_wr_controller（文中：Control Unit RAM WR Controller）
    
    * datapath_ram_wr_controller（文中：DP RAM WR Controller）
      * 有一个计数器的IP核
      
    * > 在这里里边：
      >
      > **input：**
      >
      > clk：时钟
      >
      > sclr：清除
      >
      > strobe：数据有效信号
      >
      > sel_ram：选择ram信号
      >
      > **output：**
      >
      > wr_en_ram_0：使能ram0
      >
      > wr_en_ram_1：使能ram1
      >
      > ready：告诉fft模块数据准备好了，是整块ram准备好了（1024点），将ready置1。

整完了。。。不能知道能不能运行，打算先瞅一下时序约束和逻辑分析仪的使用，看了一点，好像暂时用不到，逻辑分析仪的使用倒是很简单。

### 测试FFT单元

1. 测试单个RAM时，FFT的工作。

   **问题1**：ram读没有问题，但是写入有问题，并没有将数据全部写入，原因是Testbench写的有问题，不能每次时钟写入一次，按照时序，wea跟不上，导致ram写不了这么快。

   **方法1：**修改代码，状态机进入WR_RAM_0时，`wr_en_ram_0 = 1'b1，wr_en_ram_1 = 1'b0`；状态机进入WR_RAM_1时，`wr_en_ram_0 = 1'b0;wr_en_ram_1 = 1'b1;`，就是一直往ram里写数据。

   **结果1：**计时器跟不上，导致一个地址里写了三次数据，虽然读没有问题，但不符合逻辑，还可以改，但是可能会更麻烦，不如修改Testbench。

   ![image-20230912114145962](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230912114145962.png)

   **方法2：**把wea信号引到Testbench，wea到来时再写入数据。

   **结果2：**不行，读不到东西了。

   应该输入的信号：

   ![image-20230912162156035](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230912162156035.png)

   最后真正输入到fft中的信号：

   ![image-20230912162124763](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230912162124763.png)

   **结果2：**fft好像没输入进数据。

   **方法3：**重写了控制单元，只输出了一个数，代码思路很乱，打算重新设计，先设计一个ram，一个fft ip的，再设计两个ram，一个fft ip。

   **结果3：**已经解决，重新设计并且实现。

   

   **问题2：**想做的matlab与fft ip的对比试验，发现fft ip很多数据没记录到txt中。

   **方法1：**原因是没有跟上时序，很多数据没记录到txt中，改成了时钟驱动，成功，明天把图画到一起就可以进行下一步工作了！

   ![image-20230918223138660](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230918223138660.png)

2. 测试整体一起工作。

2. 上板验证。











### 2023.9.8

**1 使用matlab生成信号：**
$$
y = 100 * e^{i * 2 \pi * 100t} + 100 * e^{i * 2 \pi * 200t} + 100 * e^{i * 2 \pi * 300t}
$$
![image-20230914183010265](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230914183010265.png)

采样频率$fs = 1000hz$进行采样，取1024采样点，设输入到fft ip核中的单个数据为s[31:0]，s[31:16]为虚部，s[15:0]为实部，做1024点的FFT运算。

**2 fft ip输出结果**

![image-20230914185254554](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230914185254554.png)

采用原文的思路、代码，波形、数值大小与都与matlab结果差距较大。

**3 存在问题**

**问题1：**计算的数值结果错误。

**问题2：**输入一轮数据没有问题，但是对于连续输入的系统没有控制，导致fft ip采集不到数据了。



因为论文中fft ip版本v7.1：

![image-20230914185750685](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230914185750685.png)

现在版本的fft ip v9.0：

![image-20230914185838584](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230914185838584.png)

信号接口功能差距比较大，直接用原文代码思路无法实现，打算重新设计控制单元。

![image-20230914190012195](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230914190012195.png)

### 2023.9.16 重新设计

先尝试设计一块RAM的。

![0B276752C445E8E3124B6FB28D3494B6](F:\文档\Tencent Files\921377897\FileRecv\MobileFile\0B276752C445E8E3124B6FB28D3494B6.png)

**结果：**可以连续处理了。

![image-20230916113002235](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230916113002235.png)

**存在问题：**

计算结果依然不正确。猜测每一级蝶形运算可能出现溢出，搜索资料得知有一个监控计算溢出的信号，重新设置ip核，由event_fft_overflow信号可以看出，确实发生了溢出。

![image-20230916120916431](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230916120916431.png)

配置s_axis_config_tdata进行缩放，。

![image-20230916121211197](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230916121211197.png)

配置`s_axis_config_tdata = 11'b01_10_00_11_10_1`，表示各级运算缩放2，4， 1， 8， 2倍。将fft结果缩放了$2 \times 4 \times 1 \times 8 \times 2 = 256$倍，看峰值：

**matlab结果与fft_ip对比：**

![image-20230921204906782](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230921204906782.png)

没有缩放的结果与matlab计算结果差距较大，因为计算过程中产生了溢出。因为精度的问题，缩放后的结果*256与matlab运算结果有一点偏差，是正常现象。

**FFT运算结果图（实部）**

* 未运算缩放的波形：

![image-20230919175817462](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230919175817462.png)

* 运算缩放后的波形：

![image-20230919180517200](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230919180517200.png)

* matlab波形：

![image-20230920093151942](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230920093151942.png)

### 2023.9.20 Square Magnitude Modules

公式：`xk_re * xk_re + xk_im * xk_im = xk_sq_m`。

真实值（扩大`1 << 16`倍）：`xk_re * 256 * xk_re  * 256 + xk_im * 256 * xk_im * 256 = xk_sq_m * 256 * 256 = xk_sq_m << 16`。

![image-20230921204801542](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230921204801542.png)

### 2023.9.20 energy_detection_module（Fixed Threshold）

**单个模块测试**

$y = 100 * e^{i * 2 \pi * 100t} + 100 * e^{i * 2 \pi * 200t} + 100 * e^{i * 2 \pi * 300t}$经过1000hz采样后，输入FFT与square mag模块后获得的数据输入到模块energy_detection_module中，设$sub-band$大小为$M = 3，固定阈值为120，结果如下：

![image-20230926220015839](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230926220015839.png)

**整体测试**

![image-20230927101426760](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20230927101426760.png)

**问题：**

（1）$Pf$的取值？

固定阈值计算公式
$$
\lambda ^* =& \sigma_w^2(1 + \cfrac{Q^{-1}(P_f)}{\sqrt{N/2}})\cdot\cfrac{M}{N}) \cdot N + \epsilon  \\
=& \cfrac{M}{N} \sigma_w^2(N + \sqrt{2N}Q^{-1}(Pf)) + \epsilon
$$
$Q(x) = \cfrac{1}{\sqrt{2\pi}} \int_x^{+\infty} e^{-t^2 / 2}dt$

$erfc(x) = \cfrac{2}{\sqrt{\pi}} \int_x^{\infty} e^{-t^2}dt = 2Q(\sqrt{2}x)$

$Q^{-1}(x) = \sqrt{2} \, erfc(2x)$

其中$\sigma_w^2$是环境噪声平均功率，$P_f$是虚警概率，$M$是子频带的大小，$N$为$FFT$的大小，$Q^{-1}$是互补累计分布函数的反函数，可以用互补误差函数$erfx(x)$表示，$\epsilon$是定点数运算的的校正因子，固定为10。

（2）实验该如何进行？

原论文里分别讨论了$threshold$与$M$对$P_d$的影响，经过100次实验后获得实验结果。

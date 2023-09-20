/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_86(char*, char *);
extern void execute_90(char*, char *);
extern void execute_2638(char*, char *);
extern void execute_2639(char*, char *);
extern void execute_2637(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_2630(char*, char *);
extern void execute_2611(char*, char *);
extern void execute_128(char*, char *);
extern void execute_149(char*, char *);
extern void execute_165(char*, char *);
extern void execute_181(char*, char *);
extern void execute_197(char*, char *);
extern void execute_213(char*, char *);
extern void execute_229(char*, char *);
extern void execute_245(char*, char *);
extern void execute_261(char*, char *);
extern void execute_277(char*, char *);
extern void execute_293(char*, char *);
extern void execute_309(char*, char *);
extern void execute_325(char*, char *);
extern void execute_341(char*, char *);
extern void execute_357(char*, char *);
extern void execute_373(char*, char *);
extern void execute_389(char*, char *);
extern void execute_406(char*, char *);
extern void execute_417(char*, char *);
extern void execute_434(char*, char *);
extern void execute_450(char*, char *);
extern void execute_466(char*, char *);
extern void execute_482(char*, char *);
extern void execute_498(char*, char *);
extern void execute_514(char*, char *);
extern void execute_530(char*, char *);
extern void execute_546(char*, char *);
extern void execute_562(char*, char *);
extern void execute_578(char*, char *);
extern void execute_594(char*, char *);
extern void execute_610(char*, char *);
extern void execute_626(char*, char *);
extern void execute_642(char*, char *);
extern void execute_658(char*, char *);
extern void execute_674(char*, char *);
extern void execute_691(char*, char *);
extern void execute_702(char*, char *);
extern void execute_719(char*, char *);
extern void execute_735(char*, char *);
extern void execute_751(char*, char *);
extern void execute_767(char*, char *);
extern void execute_783(char*, char *);
extern void execute_799(char*, char *);
extern void execute_815(char*, char *);
extern void execute_831(char*, char *);
extern void execute_847(char*, char *);
extern void execute_863(char*, char *);
extern void execute_879(char*, char *);
extern void execute_895(char*, char *);
extern void execute_911(char*, char *);
extern void execute_927(char*, char *);
extern void execute_943(char*, char *);
extern void execute_959(char*, char *);
extern void execute_976(char*, char *);
extern void execute_987(char*, char *);
extern void execute_1004(char*, char *);
extern void execute_1020(char*, char *);
extern void execute_1036(char*, char *);
extern void execute_1052(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1084(char*, char *);
extern void execute_1100(char*, char *);
extern void execute_1116(char*, char *);
extern void execute_1132(char*, char *);
extern void execute_1148(char*, char *);
extern void execute_1164(char*, char *);
extern void execute_1180(char*, char *);
extern void execute_1196(char*, char *);
extern void execute_1212(char*, char *);
extern void execute_1228(char*, char *);
extern void execute_1244(char*, char *);
extern void execute_1261(char*, char *);
extern void execute_1272(char*, char *);
extern void execute_1289(char*, char *);
extern void execute_1305(char*, char *);
extern void execute_1321(char*, char *);
extern void execute_1337(char*, char *);
extern void execute_1353(char*, char *);
extern void execute_1369(char*, char *);
extern void execute_1385(char*, char *);
extern void execute_1401(char*, char *);
extern void execute_1417(char*, char *);
extern void execute_1433(char*, char *);
extern void execute_1449(char*, char *);
extern void execute_1465(char*, char *);
extern void execute_1481(char*, char *);
extern void execute_1497(char*, char *);
extern void execute_1513(char*, char *);
extern void execute_1529(char*, char *);
extern void execute_1546(char*, char *);
extern void execute_1557(char*, char *);
extern void execute_1574(char*, char *);
extern void execute_1590(char*, char *);
extern void execute_1606(char*, char *);
extern void execute_1622(char*, char *);
extern void execute_1638(char*, char *);
extern void execute_1654(char*, char *);
extern void execute_1670(char*, char *);
extern void execute_1686(char*, char *);
extern void execute_1702(char*, char *);
extern void execute_1718(char*, char *);
extern void execute_1734(char*, char *);
extern void execute_1750(char*, char *);
extern void execute_1766(char*, char *);
extern void execute_1782(char*, char *);
extern void execute_1798(char*, char *);
extern void execute_1814(char*, char *);
extern void execute_1831(char*, char *);
extern void execute_1842(char*, char *);
extern void execute_1859(char*, char *);
extern void execute_1875(char*, char *);
extern void execute_1891(char*, char *);
extern void execute_1907(char*, char *);
extern void execute_1923(char*, char *);
extern void execute_1939(char*, char *);
extern void execute_1955(char*, char *);
extern void execute_1971(char*, char *);
extern void execute_1987(char*, char *);
extern void execute_2003(char*, char *);
extern void execute_2019(char*, char *);
extern void execute_2035(char*, char *);
extern void execute_2051(char*, char *);
extern void execute_2067(char*, char *);
extern void execute_2083(char*, char *);
extern void execute_2099(char*, char *);
extern void execute_2116(char*, char *);
extern void execute_2124(char*, char *);
extern void execute_2139(char*, char *);
extern void execute_2153(char*, char *);
extern void execute_2167(char*, char *);
extern void execute_2181(char*, char *);
extern void execute_2195(char*, char *);
extern void execute_2209(char*, char *);
extern void execute_2223(char*, char *);
extern void execute_2237(char*, char *);
extern void execute_2251(char*, char *);
extern void execute_2265(char*, char *);
extern void execute_2279(char*, char *);
extern void execute_2293(char*, char *);
extern void execute_2307(char*, char *);
extern void execute_2321(char*, char *);
extern void execute_2335(char*, char *);
extern void execute_2349(char*, char *);
extern void execute_2364(char*, char *);
extern void execute_2374(char*, char *);
extern void execute_2378(char*, char *);
extern void execute_2382(char*, char *);
extern void execute_2386(char*, char *);
extern void execute_2390(char*, char *);
extern void execute_2394(char*, char *);
extern void execute_2398(char*, char *);
extern void execute_2402(char*, char *);
extern void execute_2411(char*, char *);
extern void execute_2421(char*, char *);
extern void execute_2427(char*, char *);
extern void execute_2437(char*, char *);
extern void execute_2443(char*, char *);
extern void execute_2453(char*, char *);
extern void execute_2459(char*, char *);
extern void execute_2469(char*, char *);
extern void execute_2477(char*, char *);
extern void execute_2483(char*, char *);
extern void execute_2489(char*, char *);
extern void execute_2495(char*, char *);
extern void execute_2510(char*, char *);
extern void execute_2518(char*, char *);
extern void execute_2527(char*, char *);
extern void execute_2532(char*, char *);
extern void execute_2541(char*, char *);
extern void execute_2549(char*, char *);
extern void execute_2555(char*, char *);
extern void execute_2564(char*, char *);
extern void execute_2572(char*, char *);
extern void execute_2581(char*, char *);
extern void execute_2589(char*, char *);
extern void execute_2595(char*, char *);
extern void execute_2602(char*, char *);
extern void execute_2609(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_2628(char*, char *);
extern void execute_2618(char*, char *);
extern void execute_2620(char*, char *);
extern void execute_2624(char*, char *);
extern void execute_2625(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_112(char*, char *);
extern void execute_115(char*, char *);
extern void execute_2641(char*, char *);
extern void execute_2642(char*, char *);
extern void execute_2643(char*, char *);
extern void execute_2644(char*, char *);
extern void execute_2645(char*, char *);
extern void execute_2646(char*, char *);
extern void execute_2647(char*, char *);
extern void execute_2648(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[222] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_86, (funcp)execute_90, (funcp)execute_2638, (funcp)execute_2639, (funcp)execute_2637, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_2630, (funcp)execute_2611, (funcp)execute_128, (funcp)execute_149, (funcp)execute_165, (funcp)execute_181, (funcp)execute_197, (funcp)execute_213, (funcp)execute_229, (funcp)execute_245, (funcp)execute_261, (funcp)execute_277, (funcp)execute_293, (funcp)execute_309, (funcp)execute_325, (funcp)execute_341, (funcp)execute_357, (funcp)execute_373, (funcp)execute_389, (funcp)execute_406, (funcp)execute_417, (funcp)execute_434, (funcp)execute_450, (funcp)execute_466, (funcp)execute_482, (funcp)execute_498, (funcp)execute_514, (funcp)execute_530, (funcp)execute_546, (funcp)execute_562, (funcp)execute_578, (funcp)execute_594, (funcp)execute_610, (funcp)execute_626, (funcp)execute_642, (funcp)execute_658, (funcp)execute_674, (funcp)execute_691, (funcp)execute_702, (funcp)execute_719, (funcp)execute_735, (funcp)execute_751, (funcp)execute_767, (funcp)execute_783, (funcp)execute_799, (funcp)execute_815, (funcp)execute_831, (funcp)execute_847, (funcp)execute_863, (funcp)execute_879, (funcp)execute_895, (funcp)execute_911, (funcp)execute_927, (funcp)execute_943, (funcp)execute_959, (funcp)execute_976, (funcp)execute_987, (funcp)execute_1004, (funcp)execute_1020, (funcp)execute_1036, (funcp)execute_1052, (funcp)execute_1068, (funcp)execute_1084, (funcp)execute_1100, (funcp)execute_1116, (funcp)execute_1132, (funcp)execute_1148, (funcp)execute_1164, (funcp)execute_1180, (funcp)execute_1196, (funcp)execute_1212, (funcp)execute_1228, (funcp)execute_1244, (funcp)execute_1261, (funcp)execute_1272, (funcp)execute_1289, (funcp)execute_1305, (funcp)execute_1321, (funcp)execute_1337, (funcp)execute_1353, (funcp)execute_1369, (funcp)execute_1385, (funcp)execute_1401, (funcp)execute_1417, (funcp)execute_1433, (funcp)execute_1449, (funcp)execute_1465, (funcp)execute_1481, (funcp)execute_1497, (funcp)execute_1513, (funcp)execute_1529, (funcp)execute_1546, (funcp)execute_1557, (funcp)execute_1574, (funcp)execute_1590, (funcp)execute_1606, (funcp)execute_1622, (funcp)execute_1638, (funcp)execute_1654, (funcp)execute_1670, (funcp)execute_1686, (funcp)execute_1702, (funcp)execute_1718, (funcp)execute_1734, (funcp)execute_1750, (funcp)execute_1766, (funcp)execute_1782, (funcp)execute_1798, (funcp)execute_1814, (funcp)execute_1831, (funcp)execute_1842, (funcp)execute_1859, (funcp)execute_1875, (funcp)execute_1891, (funcp)execute_1907, (funcp)execute_1923, (funcp)execute_1939, (funcp)execute_1955, (funcp)execute_1971, (funcp)execute_1987, (funcp)execute_2003, (funcp)execute_2019, (funcp)execute_2035, (funcp)execute_2051, (funcp)execute_2067, (funcp)execute_2083, (funcp)execute_2099, (funcp)execute_2116, (funcp)execute_2124, (funcp)execute_2139, (funcp)execute_2153, (funcp)execute_2167, (funcp)execute_2181, (funcp)execute_2195, (funcp)execute_2209, (funcp)execute_2223, (funcp)execute_2237, (funcp)execute_2251, (funcp)execute_2265, (funcp)execute_2279, (funcp)execute_2293, (funcp)execute_2307, (funcp)execute_2321, (funcp)execute_2335, (funcp)execute_2349, (funcp)execute_2364, (funcp)execute_2374, (funcp)execute_2378, (funcp)execute_2382, (funcp)execute_2386, (funcp)execute_2390, (funcp)execute_2394, (funcp)execute_2398, (funcp)execute_2402, (funcp)execute_2411, (funcp)execute_2421, (funcp)execute_2427, (funcp)execute_2437, (funcp)execute_2443, (funcp)execute_2453, (funcp)execute_2459, (funcp)execute_2469, (funcp)execute_2477, (funcp)execute_2483, (funcp)execute_2489, (funcp)execute_2495, (funcp)execute_2510, (funcp)execute_2518, (funcp)execute_2527, (funcp)execute_2532, (funcp)execute_2541, (funcp)execute_2549, (funcp)execute_2555, (funcp)execute_2564, (funcp)execute_2572, (funcp)execute_2581, (funcp)execute_2589, (funcp)execute_2595, (funcp)execute_2602, (funcp)execute_2609, (funcp)execute_135, (funcp)execute_137, (funcp)execute_139, (funcp)execute_2628, (funcp)execute_2618, (funcp)execute_2620, (funcp)execute_2624, (funcp)execute_2625, (funcp)execute_117, (funcp)execute_118, (funcp)execute_112, (funcp)execute_115, (funcp)execute_2641, (funcp)execute_2642, (funcp)execute_2643, (funcp)execute_2644, (funcp)execute_2645, (funcp)execute_2646, (funcp)execute_2647, (funcp)execute_2648, (funcp)transaction_4, (funcp)transaction_5, (funcp)transaction_6, (funcp)vhdl_transfunc_eventcallback, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_0, (funcp)transaction_1, (funcp)transaction_2, (funcp)transaction_3};
const int NumRelocateId= 222;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_multiplier_behav/xsim.reloc",  (void **)funcTab, 222);
	iki_vhdl_file_variable_register(dp + 100784);
	iki_vhdl_file_variable_register(dp + 100840);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_multiplier_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_multiplier_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 114048, dp + 113064, 0, 15, 16, 31, 16, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 114048, dp + 113120, 0, 15, 0, 15, 16, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_multiplier_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_multiplier_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_multiplier_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/UC.vhd";



static void work_a_2425904575_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4688);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 4690);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 4692);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:
LAB2:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    goto LAB2;

LAB4:    goto LAB2;

LAB5:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 4694);
    t14 = xsi_mem_cmp(t11, t12, 6U);
    if (t14 == 1)
        goto LAB12;

LAB18:    t15 = (t0 + 4700);
    t17 = xsi_mem_cmp(t15, t12, 6U);
    if (t17 == 1)
        goto LAB13;

LAB19:    t18 = (t0 + 4706);
    t20 = xsi_mem_cmp(t18, t12, 6U);
    if (t20 == 1)
        goto LAB14;

LAB20:    t21 = (t0 + 4712);
    t23 = xsi_mem_cmp(t21, t12, 6U);
    if (t23 == 1)
        goto LAB15;

LAB21:    t24 = (t0 + 4718);
    t26 = xsi_mem_cmp(t24, t12, 6U);
    if (t26 == 1)
        goto LAB16;

LAB22:
LAB17:
LAB11:    goto LAB2;

LAB10:;
LAB12:    xsi_set_current_line(52, ng0);
    t27 = (t0 + 4724);
    t29 = (t0 + 2904);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 6U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB11;

LAB13:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4730);
    t3 = (t0 + 2904);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB14:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4736);
    t3 = (t0 + 2904);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB15:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4742);
    t3 = (t0 + 2904);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB16:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4748);
    t3 = (t0 + 2904);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB23:;
}


extern void work_a_2425904575_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2425904575_3212880686_p_0};
	xsi_register_didat("work_a_2425904575_3212880686", "isim/test_UC_isim_beh.exe.sim/work/a_2425904575_3212880686.didat");
	xsi_register_executes(pe);
}

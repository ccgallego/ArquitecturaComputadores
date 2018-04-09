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
static const char *ng0 = "/home/gallego/Escritorio/ArquitecturaDeComputadores-master/Procesador1/Alu.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t17[16];
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
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5094);
    t4 = xsi_mem_cmp(t1, t2, 6U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 5100);
    t7 = xsi_mem_cmp(t5, t2, 6U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 5106);
    t10 = xsi_mem_cmp(t8, t2, 6U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 5112);
    t13 = xsi_mem_cmp(t11, t2, 6U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 5118);
    t16 = xsi_mem_cmp(t14, t2, 6U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(61, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 3064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2984);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(51, ng0);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t18 = (t0 + 4952U);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 4968U);
    t22 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t17, t19, t18, t21, t20);
    t23 = (t17 + 12U);
    t24 = *((unsigned int *)t23);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB15;

LAB16:    t27 = (t0 + 3064);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t22, 32U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4968U);
    t6 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4968U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4968U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4968U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB14:;
LAB15:    xsi_size_not_matching(32U, t25, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t25, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, t25, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t25, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t25, 0);
    goto LAB24;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/test_alu_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}

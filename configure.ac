AC_PREREQ(2.52)

AC_INIT([apertium-ckb], [0.1.0], [francis.tyers@uit.no])
AM_INIT_AUTOMAKE([apertium-ckb], [0.1.0], no-define)
AC_PROG_LN_S
AC_PROG_AWK
AC_PATH_PROG(AWKPATH, $AWK,[/usr/bin/gawk])

m4_define([required_apertium_version], [3.3.0])
m4_define([required_lttolbox_version], [3.3.0])

PKG_CHECK_MODULES(APERTIUM, apertium >= required_apertium_version)
PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox >= required_lttolbox_version)

AC_PATH_PROG([CGCOMP], [cg-comp], [false], [$PATH$PATH_SEPARATOR$with_cg_comp/bin])
AS_IF([test x$CGCOMP = xfalse], [AC_MSG_ERROR([You don't have cg-comp installed])])


PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.0.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE

AC_OUTPUT([Makefile apertium-ckb.pc])
AC_OUTPUT([i_to_p.awk])
AC_OUTPUT([inline_e.awk])
AC_OUTPUT([sustituye_caracteres.awk])

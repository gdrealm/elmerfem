dnl
dnl Allow the user disable support for command line editing using GNU
dnl readline.
dnl
dnl OCTAVE_ENABLE_READLINE
AC_DEFUN([ACX_ENABLE_READLINE], [
USE_READLINE=true
LIBREADLINE=
AC_ARG_ENABLE(readline,
    [  --enable-readline       use readline library (default is yes)],
    [if test "$enableval" = no; then
       USE_READLINE=false
       warn_readline="command editing and history features require GNU Readline"
     fi])
  if $USE_READLINE; then
    AC_CHECK_LIB(readline, rl_set_keyboard_input_timeout, [
      LIBREADLINE="-lreadline"
      LIBS="$LIBREADLINE $LIBS"
      AC_DEFINE(USE_READLINE, 1, [Define to use the readline library.])
    ], [
      AC_MSG_WARN([I need GNU Readline 4.2 or later])
      AC_MSG_ERROR([this is fatal unless you specify --disable-readline])
    ],"-lncurses")
  fi
  AC_SUBST(LIBREADLINE)
])


AC_DEFUN([ACX_GET_TERM], [
acx_found_termlib=no
for termlib in ncurses; do
  AC_CHECK_LIB(${termlib}, tputs, [TERMLIBS="${TERMLIBS} -l${termlib}"])
  case "${TERMLIBS}" in
    *-l${termlib}*)
      LIBS="$TERMLIBS $LIBS"
      AC_SUBST(TERMLIBS)
      acx_found_termlib=yes
      break
    ;;
  esac
done

if test "$acx_found_termlib" = no; then
  warn_termlibs="I couldn't find -lncurses (patch this to look for others)!"
  AC_MSG_WARN($warn_termlibs)
fi
])

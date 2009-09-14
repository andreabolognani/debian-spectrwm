# $scrotwm: Makefile,v 1.9 2009/09/13 17:28:19 dwc Exp $
.include <bsd.xconf.mk>

SUBDIR= lib

PROG=scrotwm
MAN=scrotwm.1

CFLAGS+=-std=c89 -Wall -Wno-uninitialized -ggdb3
CPPFLAGS+= -I${X11BASE}/include
LDADD+=-lutil -L${X11BASE}/lib -lX11 -lXrandr

MANDIR= ${X11BASE}/man/cat

obj: _xenocara_obj

.include <bsd.prog.mk>
.include <bsd.xorg.mk>

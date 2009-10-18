# $scrotwm: Makefile,v 1.12 2009/10/07 03:19:11 marco Exp $
.include <bsd.xconf.mk>

PREFIX?=/usr/local

BINDIR=${PREFIX}/bin
SUBDIR= lib

PROG=scrotwm
MAN=scrotwm.1 scrotwm_es.1 scrotwm_it.1

#CFLAGS+=-std=c89 -Wall -Wno-uninitialized -ggdb3
CFLAGS+=-Wall -Wno-uninitialized -ggdb3
CPPFLAGS+= -I${X11BASE}/include
LDADD+=-lutil -L${X11BASE}/lib -lX11 -lXrandr

MANDIR= ${PREFIX}/man/cat

obj: _xenocara_obj

.include <bsd.prog.mk>
.include <bsd.xorg.mk>

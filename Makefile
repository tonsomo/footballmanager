# Makefile.in generated automatically by automake 1.5 from Makefile.am.
# KDE tags expanded automatically by am_edit - $Revision: 1.339 $ 
# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



####### kdevelop will overwrite this part!!! (begin)##########

SHELL = /bin/sh

srcdir = .
top_srcdir = ..

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include
pkgdatadir = $(datadir)/fm
pkglibdir = $(libdir)/fm
pkgincludedir = $(includedir)/fm
top_builddir = ..

ACLOCAL = ${SHELL} /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/missing --run aclocal
AUTOCONF = ${SHELL} /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/missing --run autoconf
AUTOMAKE = ${SHELL} /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/missing --run automake
AUTOHEADER = ${SHELL} /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/missing --run autoheader

INSTALL = /usr/bin/install -c -p
INSTALL_PROGRAM = ${INSTALL} $(INSTALL_STRIP_FLAG)
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_alias = 
build_triplet = i686-pc-mingw32
host_alias = arm-linux
host_triplet = arm-unknown-linux-gnu
target_alias = 
target_triplet = arm-unknown-linux-gnu
AMTAR = ${SHELL} /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/missing --run tar
ARTSCCONFIG = @ARTSCCONFIG@
AS = @AS@
AUTODIRS = 
AWK = gawk
CC = arm-linux-gcc
CONF_FILES =  $(top_srcdir)/configure.in.in
CPP = arm-linux-gcc -E
CXX = arm-linux-g++
CXXCPP = arm-linux-g++ -E
DCOPIDL = @DCOPIDL@
DCOPIDL2CPP = @DCOPIDL2CPP@
DCOP_DEPENDENCIES = @DCOP_DEPENDENCIES@
DEPDIR = .deps
DLLTOOL = @DLLTOOL@
DOXYGEN = @DOXYGEN@
DOXYGEN_PROJECT_NAME = @DOXYGEN_PROJECT_NAME@
DOXYGEN_PROJECT_NUMBER = @DOXYGEN_PROJECT_NUMBER@
DPMSINC = @DPMSINC@
DPMSLIB = @DPMSLIB@
ECHO = echo
EXEEXT = 
FRAMEWORK_COREAUDIO = @FRAMEWORK_COREAUDIO@
GCJ = @GCJ@
GCJFLAGS = @GCJFLAGS@
GLINC = @GLINC@
GLLIB = @GLLIB@
GMSGFMT = @GMSGFMT@
IDL = @IDL@
IDL_DEPENDENCIES = @IDL_DEPENDENCIES@
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
JAR = @JAR@
JAVAC = @JAVAC@
JAVAH = @JAVAH@
JVMLIBS = @JVMLIBS@
KDECONFIG = @KDECONFIG@
KDE_CXXFLAGS = 
KDE_EXTRA_RPATH = @KDE_EXTRA_RPATH@
KDE_HAS_DOXYGEN = @KDE_HAS_DOXYGEN@
KDE_HAVE_DOT = @KDE_HAVE_DOT@
KDE_INCLUDES = @KDE_INCLUDES@
KDE_LDFLAGS = @KDE_LDFLAGS@
KDE_MT_LDFLAGS = @KDE_MT_LDFLAGS@
KDE_MT_LIBS = @KDE_MT_LIBS@
KDE_PLUGIN = @KDE_PLUGIN@
KDE_RPATH = @KDE_RPATH@
KDE_USE_CLOSURE_FALSE = #
KDE_USE_CLOSURE_TRUE = 
KDE_USE_FINAL_FALSE = 
KDE_USE_FINAL_TRUE = #
KDE_XSL_STYLESHEET = @KDE_XSL_STYLESHEET@
LEX = @LEX@
LEXLIB = @LEXLIB@
LIBCOMPAT = @LIBCOMPAT@
LIBCRYPT = @LIBCRYPT@
LIBDL = @LIBDL@
LIBGEN = @LIBGEN@
LIBJPEG = @LIBJPEG@
LIBMICO = @LIBMICO@
LIBOBJS = 
LIBPNG = @LIBPNG@
LIBPTHREAD = @LIBPTHREAD@
LIBPYTHON = @LIBPYTHON@
LIBQIMGIO = @LIBQIMGIO@
LIBRESOLV = @LIBRESOLV@
LIBSHADOW = @LIBSHADOW@
LIBSM = @LIBSM@
LIBSOCKET = @LIBSOCKET@
LIBTIFF = @LIBTIFF@
LIBTOOL = $(SHELL) $(top_builddir)/libtool --silent
LIBUCB = @LIBUCB@
LIBUTIL = @LIBUTIL@
LIBXINERAMA = @LIBXINERAMA@
LIBZ = @LIBZ@
LIB_KAB = @LIB_KAB@
LIB_KDECORE = @LIB_KDECORE@
LIB_KDEPRINT = @LIB_KDEPRINT@
LIB_KDEUI = @LIB_KDEUI@
LIB_KFILE = @LIB_KFILE@
LIB_KFM = @LIB_KFM@
LIB_KHTML = @LIB_KHTML@
LIB_KIMGIO = @LIB_KIMGIO@
LIB_KIO = @LIB_KIO@
LIB_KPARTS = @LIB_KPARTS@
LIB_KSPELL = @LIB_KSPELL@
LIB_KSYCOCA = @LIB_KSYCOCA@
LIB_POLL = @LIB_POLL@
LIB_QPE = @LIB_QPE@
LIB_QT = @LIB_QT@
LIB_QTOPIA = @LIB_QTOPIA@
LIB_SMB = @LIB_SMB@
LIB_X11 = @LIB_X11@
LIB_XEXT = @LIB_XEXT@
LN_S = ln -s
MCOPIDL = @MCOPIDL@
MEINPROC = @MEINPROC@
MICO_INCLUDES = @MICO_INCLUDES@
MICO_LDFLAGS = @MICO_LDFLAGS@
MOC = @MOC@
MSGFMT = @MSGFMT@
NOOPT_CFLAGS = 
NOOPT_CXXFLAGS = @NOOPT_CXXFLAGS@
NOREPO = -fno-repo
OBJDUMP = @OBJDUMP@
OBJEXT = o
PACKAGE = fm
PAMLIBS = @PAMLIBS@
PASSWDLIBS = @PASSWDLIBS@
PYTHONINC = @PYTHONINC@
PYTHONLIB = @PYTHONLIB@
PYTHONMODDIR = @PYTHONMODDIR@
QTDOCDIR = @QTDOCDIR@
QTE_NORTTI = @QTE_NORTTI@
QTOPIA_INCLUDES = @QTOPIA_INCLUDES@
QT_INCLUDES = @QT_INCLUDES@
QT_LDFLAGS = @QT_LDFLAGS@
RANLIB = arm-linux-ranlib
RC = @RC@
REPO = -frepo
SDL_CFLAGS = -IC:/devkitGP2X/include/SDL -D_REENTRANT
SDL_CONFIG = /c/devkitgp2x/bin/sdl-config
SDL_LIBS = -LC:/devkitGP2X/lib -Wl,-rpath,C:/devkitGP2X/lib -lSDL -lSDL_gfx --start-group -lSDL_ttf -lfreetype -lSDL --end-group -lSDL_image -ljpeg -lpng12 -lz --start-group -lSDL_mixer -lvorbisidec -lmikmod -lSDL --end-group -lgcc -lm -lc -lexpat -lpthread -ldl
SETUIDFLAGS = @SETUIDFLAGS@
STRIP = arm-linux-strip
TOPSUBDIRS =  fm
UIC = @UIC@
UIC_TR = @UIC_TR@
USER_INCLUDES = 
USER_LDFLAGS = 
USE_EXCEPTIONS = 
USE_RTTI = 
USE_THREADS = @USE_THREADS@
VERSION = 0.99
WOVERLOADED_VIRTUAL = @WOVERLOADED_VIRTUAL@
XGETTEXT = @XGETTEXT@
XPMINC = @XPMINC@
XPMLIB = @XPMLIB@
X_EXTRA_LIBS = @X_EXTRA_LIBS@
X_INCLUDES = @X_INCLUDES@
X_LDFLAGS = @X_LDFLAGS@
X_PRE_LIBS = @X_PRE_LIBS@
all_includes =  
all_libraries =  
am__include = include
am__quote = 
idldir = @idldir@
install_sh = /d/Downloads/GP2X/fm-0.99/fm-0.99/admin/install-sh
jni_includes = @jni_includes@
kde_appsdir = @kde_appsdir@
kde_bindir = @kde_bindir@
kde_confdir = @kde_confdir@
kde_datadir = @kde_datadir@
kde_htmldir = @kde_htmldir@
kde_icondir = @kde_icondir@
kde_includes = @kde_includes@
kde_libraries = @kde_libraries@
kde_libs_htmldir = @kde_libs_htmldir@
kde_libs_prefix = @kde_libs_prefix@
kde_locale = @kde_locale@
kde_mimedir = @kde_mimedir@
kde_moduledir = @kde_moduledir@
kde_qtver = @kde_qtver@
kde_servicesdir = @kde_servicesdir@
kde_servicetypesdir = @kde_servicetypesdir@
kde_sounddir = @kde_sounddir@
kde_styledir = @kde_styledir@
kde_templatesdir = @kde_templatesdir@
kde_wallpaperdir = @kde_wallpaperdir@
kde_widgetdir = @kde_widgetdir@
micodir = @micodir@
qt_includes = @qt_includes@
qt_libraries = @qt_libraries@
x_includes = @x_includes@
x_libraries = @x_libraries@

bin_PROGRAMS = fm

fm_SOURCES = font.c misc.c menu.c matchday.c match.c main.c io.c init.c fm.c eos.c drv_linux.c 
fm_LDADD = 

EXTRA_DIST = drv_linux.c eos.c fm.c fm.h game.dat init.c io.c main.c match.c matchday.c menu.c misc.c font.c 

####### kdevelop will overwrite this part!!! (end)############
# set the include path found by configure
INCLUDES = $(all_includes)

# the library search path.
fm_LDFLAGS = $(all_libraries) 
subdir = fm
mkinstalldirs = $(SHELL) $(top_srcdir)/admin/mkinstalldirs
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
bin_PROGRAMS = fm$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)

am_fm_OBJECTS = font.$(OBJEXT) misc.$(OBJEXT) menu.$(OBJEXT) \
	matchday.$(OBJEXT) match.$(OBJEXT) main.$(OBJEXT) io.$(OBJEXT) \
	init.$(OBJEXT) fm.$(OBJEXT) eos.$(OBJEXT) drv_linux.$(OBJEXT)
#>- fm_OBJECTS = $(am_fm_OBJECTS)
#>+ 6
fm_final_OBJECTS = font.o misc.o menu.o matchday.o match.o main.o io.o init.o fm.o eos.o drv_linux.o 
fm_nofinal_OBJECTS = font.$(OBJEXT) misc.$(OBJEXT) menu.$(OBJEXT) \
	matchday.$(OBJEXT) match.$(OBJEXT) main.$(OBJEXT) io.$(OBJEXT) \
	init.$(OBJEXT) fm.$(OBJEXT) eos.$(OBJEXT) drv_linux.$(OBJEXT)
fm_OBJECTS = $(fm_nofinal_OBJECTS)
#fm_OBJECTS = $(fm_final_OBJECTS)
fm_DEPENDENCIES =

DEFS = -DHAVE_CONFIG_H
DEFAULT_INCLUDES =  -I. -I$(srcdir) -I$(top_builddir)
CPPFLAGS = 
LDFLAGS = 
LIBS =  -LC:/devkitGP2X/lib -Wl,-rpath,C:/devkitGP2X/lib -lSDL -lSDL_gfx --start-group -lSDL_ttf -lfreetype -lSDL --end-group -lSDL_image -ljpeg -lpng12 -lz --start-group -lSDL_mixer -lvorbisidec -lmikmod -lSDL --end-group -lgcc -lm -lc -lexpat -lpthread -ldl
depcomp = $(SHELL) $(top_srcdir)/admin/depcomp
#>- #DEP_FILES = $(DEPDIR)/drv_linux.Po $(DEPDIR)/eos.Po \
#>- #	$(DEPDIR)/fm.Po $(DEPDIR)/font.Po $(DEPDIR)/init.Po \
#>- #	$(DEPDIR)/io.Po $(DEPDIR)/main.Po \
#>- #	$(DEPDIR)/match.Po $(DEPDIR)/matchday.Po \
#>- #	$(DEPDIR)/menu.Po $(DEPDIR)/misc.Po
#>+ 6
#DEP_FILES =   $(DEPDIR)/drv_linux.Po $(DEPDIR)/eos.Po \
	#	$(DEPDIR)/fm.Po $(DEPDIR)/font.Po $(DEPDIR)/init.Po \
	#	$(DEPDIR)/io.Po $(DEPDIR)/main.Po \
	#	$(DEPDIR)/match.Po $(DEPDIR)/matchday.Po \
	#	$(DEPDIR)/menu.Po $(DEPDIR)/misc.Po

COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --mode=compile $(CC) $(DEFS) $(DEFAULT_INCLUDES) \
	$(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
CFLAGS = -O2   -IC:/devkitGP2X/include/SDL -D_REENTRANT
DIST_SOURCES = $(fm_SOURCES)
DIST_COMMON = Makefile.am Makefile.in
SOURCES = $(fm_SOURCES)

#>- all: all-am
#>+ 1
all: docs-am  all-am

.SUFFIXES:
.SUFFIXES: .c .lo .o .obj

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool
$(srcdir)/Makefile.in:  Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
#>- 	cd $(top_srcdir) && \
#>- $(AUTOMAKE) --gnu  fm/Makefile
#>+ 3
	cd $(top_srcdir) && \
	$(AUTOMAKE) --gnu  fm/Makefile
	cd $(top_srcdir) && perl admin/am_edit fm-0.99/fm/Makefile.in
Makefile:  $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && \
	CONFIG_HEADERS= CONFIG_LINKS= \
	CONFIG_FILES=$(subdir)/$@ $(SHELL) ./config.status
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	if test -f $$p \
	|| test -f $$p1 \
	; then \
	f=`echo $$p1|sed '$(transform);s/$$/$(EXEEXT)/'`; \
	echo " $(INSTALL_PROGRAM_ENV) $(LIBTOOL) --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f"; \
	$(INSTALL_PROGRAM_ENV) $(LIBTOOL) --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f; \
	else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	f=`echo $$p|sed 's/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	rm -f $(DESTDIR)$(bindir)/$$f; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
fm$(EXEEXT): $(fm_OBJECTS) $(fm_DEPENDENCIES) 
	@rm -f fm$(EXEEXT)
	$(LINK) $(fm_LDFLAGS) $(fm_OBJECTS) $(fm_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT) core *.core

distclean-compile:
	-rm -f *.tab.c

#include $(DEPDIR)/drv_linux.Po
#include $(DEPDIR)/eos.Po
#include $(DEPDIR)/fm.Po
#include $(DEPDIR)/font.Po
#include $(DEPDIR)/init.Po
#include $(DEPDIR)/io.Po
#include $(DEPDIR)/main.Po
#include $(DEPDIR)/match.Po
#include $(DEPDIR)/matchday.Po
#include $(DEPDIR)/menu.Po
#include $(DEPDIR)/misc.Po

distclean-depend:
	-rm -rf $(DEPDIR)

.c.o:
#	source='$<' object='$@' libtool=no 
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' 
#	$(CCDEPMODE) $(depcomp) 
	$(COMPILE) -c `test -f $< || echo '$(srcdir)/'`$<

.c.obj:
#	source='$<' object='$@' libtool=no 
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' 
#	$(CCDEPMODE) $(depcomp) 
	$(COMPILE) -c `cygpath -w $<`

.c.lo:
#	source='$<' object='$@' libtool=yes 
#	depfile='$(DEPDIR)/$*.Plo' tmpdepfile='$(DEPDIR)/$*.TPlo' 
#	$(CCDEPMODE) $(depcomp) 
	$(LTCOMPILE) -c -o $@ `test -f $< || echo '$(srcdir)/'`$<
CCDEPMODE = depmode=none
uninstall-info-am:

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	done | \
	$(AWK) '    { files[$$0] = 1; } \
	END { for (i in files) print i; }'`; \
	mkid -fID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
	$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	done | \
	$(AWK) '    { files[$$0] = 1; } \
	END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$unique$(LISP)$$tags" \
	|| etags $(ETAGS_ARGS) $$tags  $$unique $(LISP)

GTAGS:
	here=`CDPATH=: && cd $(top_builddir) && pwd` \
	&& cd $(top_srcdir) \
	&& gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH

#>- DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
#>+ 4
KDE_DIST=fm fm0.sav 

DISTFILES= $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST) $(KDE_DIST)


top_distdir = ..
distdir = $(top_distdir)/$(PACKAGE)-$(VERSION)

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	if test -f $$file; then d=.; else d=$(srcdir); fi; \
	dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	$(mkinstalldirs) "$(distdir)/$$dir"; \
	fi; \
	if test -d $$d/$$file; then \
	cp -pR $$d/$$file $(distdir) \
	|| exit 1; \
	else \
	test -f $(distdir)/$$file \
	|| cp -p $$d/$$file $(distdir)/$$file \
	|| exit 1; \
	fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS)

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(bindir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	`test -z '$(STRIP)' || \
	echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES) stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
#>- clean: clean-am
#>+ 1
clean: kde-rpo-clean  clean-am

clean-am: clean-binPROGRAMS clean-generic clean-libtool mostlyclean-am

distclean: distclean-am

distclean-am: clean-am distclean-compile distclean-depend \
	distclean-generic distclean-libtool distclean-tags

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-data-local

install-exec-am: install-binPROGRAMS

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

uninstall-am: uninstall-binPROGRAMS uninstall-info-am uninstall-local

.PHONY: GTAGS all all-am check check-am clean clean-binPROGRAMS \
	clean-generic clean-libtool distclean distclean-compile \
	distclean-depend distclean-generic distclean-libtool \
	distclean-tags distdir dvi dvi-am info info-am install \
	install-am install-binPROGRAMS install-data install-data-am \
	install-data-local install-exec install-exec-am install-info \
	install-info-am install-man install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic mostlyclean-libtool tags uninstall \
	uninstall-am uninstall-binPROGRAMS uninstall-info-am \
	uninstall-local


install-data-local:
#>- 	$(mkinstalldirs) /usr/share/fm/
#>+ 1
	$(mkinstalldirs) $(DESTDIR)/usr/share/fm/
#>- 	$(INSTALL_DATA) $(srcdir)/game.dat /usr/share/fm/game.dat
#>+ 1
	$(INSTALL_DATA) $(srcdir)/game.dat $(DESTDIR)/usr/share/fm/game.dat

uninstall-local:
#>- 	-rm -f /usr/share/fm/game.dat
#>+ 1
	-rm -f $(DESTDIR)/usr/share/fm/game.dat
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:


#>+ 2
docs-am:

#>+ 6
force-reedit:
		cd $(top_srcdir) && \
	$(AUTOMAKE) --gnu  fm/Makefile
	cd $(top_srcdir) && perl admin/am_edit fm-0.99/fm/Makefile.in


#>+ 2
final:
	$(MAKE) fm_OBJECTS="$(fm_final_OBJECTS)" all-am
#>+ 2
final-install:
	$(MAKE) fm_OBJECTS="$(fm_final_OBJECTS)" install-am
#>+ 2
no-final:
	$(MAKE) fm_OBJECTS="$(fm_nofinal_OBJECTS)" all-am
#>+ 2
no-final-install:
	$(MAKE) fm_OBJECTS="$(fm_nofinal_OBJECTS)" install-am
#>+ 3
cvs-clean:
	$(MAKE) admindir=$(top_srcdir)/admin -f $(top_srcdir)/admin/Makefile.common cvs-clean

#>+ 3
kde-rpo-clean:
	-rm -f *.rpo

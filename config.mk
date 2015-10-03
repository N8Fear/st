# st version
VERSION = 0.6

# Customize below to fit your system

# paths
PREFIX = /usr
MANPREFIX = ${PREFIX}/share/man

PKGCFG = fontconfig wayland-client wayland-cursor xkbcommon wld

# includes and libs
INCS = -I. -I/usr/include `pkg-config --cflags ${PKGCFG}`
LIBS = -L/usr/lib -lc -lm -lrt -lutil `pkg-config --libs ${PKGCFG}`

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -g -std=c99 -pedantic -Wall -Wvariadic-macros -Os ${INCS} ${CPPFLAGS}
LDFLAGS += -g ${LIBS}

# compiler and linker
# CC = cc


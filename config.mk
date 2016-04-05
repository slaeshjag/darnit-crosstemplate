# Project: template
# Makefile configurations
MAKEFLAGS	+=	--no-print-directory

#Binaries
BIN		=	executable
WINBIN		=	executable.exe

#Windows cross compiler
CCCROSS		=	i586-mingw32msvc-gcc
LDFLAGSCROSS	+=	-ldarnit_s -static -lm -lbz2 -lwinmm -lopengl32 -lgdi32 -lmodplug -lws2_32 -lshlwapi -lstdc++
CFLAGSCROSS	+=	-Wall -D_XOPEN_SOURCE=600 -O0

#General flags
LDFLAGS		+=	-ldarnit_s -lm -lSDL -lbz2 -lasound -lGL -lmodplug
CFLAGS		+=	-Wall -std=c99 -g -O0 -D_XOPEN_SOURCE=600 -I$(TOPDIR)/common 
ASFLAGS		+=

#Extra install targets
INSTARG		=	

#Makefile tools
MKDIR		=	mkdir -p
RMDIR		=	rmdir --ignore-fail-on-non-empty

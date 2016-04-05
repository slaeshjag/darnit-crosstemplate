# Project: 68k-emu
TOPDIR		=	$(shell pwd)
export TOPDIR
include config.mk

# Sub directories to build
SUBDIRS		=	src


.PHONY: all clean
.PHONY: $(SUBDIRS)

all: $(SUBDIRS)
	
	@echo " [ LD ] bin/$(BIN)"
	@$(CC) -o bin/$(BIN) $(CFLAGS) src/*.o $(LDFLAGS)
	@echo " [ LD ] bin/$(WINBIN)"
	@$(CCCROSS) -o bin/$(WINBIN) $(CFLAGSCROSS) src/*.wo $(LDFLAGSCROSS)
	
	@echo "Build complete."
	@echo 

bin:
	@echo " [INIT] bin/"
	@$(MKDIR) bin/

clean: $(SUBDIRS)
	@echo " [ RM ] bin/"
	@$(RMDIR) bin/
	@echo
	@echo "Source tree cleaned."
	@echo

$(SUBDIRS): | bin
	@echo " [ CD ] $(CURRENTPATH)$@/"
	@+make -C "$@" "CURRENTPATH=$(CURRENTPATH)$@/" $(MAKECMDGOALS)

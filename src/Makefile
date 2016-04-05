# Project: template
include $(TOPDIR)/config.mk

DEPENDS		=

SRCFILES	=	$(wildcard *.c)
OBJFILES	=	$(SRCFILES:.c=.o)
WINOBJFILES	=	$(SRCFILES:.c=.wo)
.PHONY: all clean

all: $(WINOBJFILES) $(OBJFILES) $(DEPENDS)
	@echo "Done."
	@echo
	
clean:
	@echo
	@echo " [ RM ] $(OBJFILES)"
	@$(RM) $(OBJFILES)
	@echo " [ RM ] $(WINOBJFILES)"
	@$(RM) $(WINOBJFILES)
	@echo "Done."
	@echo 

%.o: %.c %.h
	@echo " [ CC ] src/$<"
	@$(CC) $(CFLAGS) -c -o $@ $<
	
%.wo: %.c %.h
	@echo " [ CC ] src/$<"
	@$(CCCROSS) $(CFLAGSCROSS) -c -o $@ $<


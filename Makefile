MAKEARGS := -C $(CURDIR)/buildroot
MAKEARGS += O=$(CURDIR)/output
MAKEARGS += BR2_EXTERNAL=$(CURDIR)/br2-external

default:
ifdef defconfig
	$(MAKE) $(MAKEARGS) $(defconfig)
else
	$(MAKE) $(MAKEARGS)
endif

savedefconfig:
	$(MAKE) $(MAKEARGS) savedefconfig

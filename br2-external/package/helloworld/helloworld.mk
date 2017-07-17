################################################################################
#
# helloworld
#
################################################################################

HELLOWORLD_VERSION = 1.0
HELLOWORLD_SITE = https://github.com/pialva/helloworld
HELLOWORLD_SITE_METHOD = git

define HELLOWORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef
 
define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/helloworld $(TARGET_DIR)/usr/bin/helloworld
endef

$(eval $(generic-package))


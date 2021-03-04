ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = MDPPref
MDPPref_FILES = $(wildcard *.m)
MDPPref_INSTALL_PATH = /Library/PreferenceBundles
MDPPref_PRIVATE_FRAMEWORKS = Preferences
MDPPref_EXTRA_FRAMEWORKS = libhdev
MDPPref_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/MDPPref.plist$(ECHO_END)

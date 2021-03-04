ARCHS = arm64 arm64e
TARGET = iphone:clang:12.4:12.0
INSTALL_TARGET_PROCESSES = Outlook-iOS TeamSpaceApp Word Excel PowerPoint OfficeMobile OneNote PowerApps OneDrive SfB Preferences

# https://gist.github.com/haoict/96710faf0524f0ec48c13e405b124222
PREFIX = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault-11.5.xctoolchain/usr/bin/"

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = microsoftdetectionbypass
microsoftdetectionbypass_FILES = $(wildcard *.xm *.m)
microsoftdetectionbypass_EXTRA_FRAMEWORKS = libhdev
microsoftdetectionbypass_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += pref

include $(THEOS_MAKE_PATH)/aggregate.mk

clean::
	rm -rf .theos packages
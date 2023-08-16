ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET=iphone:clang:16.2:15.0
ARCHS=arm64 arm64e
else
TARGET=iphone:clang:14.5:7.0
ARCHS=armv7 arm64 arm64e
endif

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = bypassmonkey
bypassmonkey_FILES = Tweak.x
bypassmonkey_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
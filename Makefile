GO_EASY_ON_ME=1

ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RecordAnywhere
RecordAnywhere_FILES = Tweak.xm
RecordAnywhere_FRAMEWORKS = CoreFoundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
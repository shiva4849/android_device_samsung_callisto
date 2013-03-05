BUILD_OLD_LIBCAMERA:=
ifeq ($(BUILD_OLD_LIBCAMERA),true)

# When zero we link against libqcamera; when 1, we dlopen libqcamera.
DLOPEN_LIBQCAMERA:=1

ifneq ($(BUILD_TINY_ANDROID),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS:=-fno-short-enums
LOCAL_CFLAGS+=-DDLOPEN_LIBQCAMERA=$(DLOPEN_LIBQCAMERA)

LOCAL_SRC_FILES:= QualcommCameraHardware.cpp

LOCAL_SHARED_LIBRARIES:= libutils libbinder libui liblog libcamera_client
ifneq ($(DLOPEN_LIBQCAMERA),1)
LOCAL_SHARED_LIBRARIES+= liboemcamera
else
LOCAL_SHARED_LIBRARIES+= libdl
endif

LOCAL_MODULE:= libcamera

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


## Make camera wrapper


include $(CLEAR_VARS)

LOCAL_C_FLAGS        += -O3
LOCAL_MODULE_TAGS    := optional
LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE         := camera.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_SRC_FILES      := cameraHal.cpp
LOCAL_PRELINK_MODULE := false

LOCAL_SHARED_LIBRARIES := liblog libdl libutils libcamera_client libbinder libcutils libhardware libui libcamera
LOCAL_C_INCLUDES       := frameworks/base/services/ frameworks/base/include frameworks/native/include frameworks/av/services/camera/libcameraservice

LOCAL_C_INCLUDES       += hardware/libhardware/include/ hardware

include $(BUILD_SHARED_LIBRARY)
endif # not BUILD_TINY_ANDROID
endif # not BUILD_OLD_LIBCAMERA


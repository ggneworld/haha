LOCAL_PATH := $(call my-dir)

#######
include $(CLEAR_VARS)
LOCAL_MODULE := opencv_java3
LOCAL_SRC_FILES := ../jniLibs/$(TARGET_ARCH_ABI)/libopencv_java3.so
include $(PREBUILT_SHARED_LIBRARY)

#######
include $(CLEAR_VARS)
LOCAL_SRC_FILES  := DetectionFace.cpp CompressiveTracker.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
                    $(LOCAL_PATH)/include
LOCAL_STATIC_LIBRARIES := gnustl_static
LOCAL_LDLIBS     +=  -llog -ldl
LOCAL_SHARED_LIBRARIES := opencv_java3
LOCAL_MODULE     := face


include $(BUILD_SHARED_LIBRARY)

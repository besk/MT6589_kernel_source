#
# libcamdrv_tpipe
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#
LOCAL_SRC_FILES := tpipe_drv.cpp


#
LOCAL_C_INCLUDES := \
    $(TOP)/$(MTK_PATH_PLATFORM)/hardware/camera/inc/drv \
    $(TOP)/$(MTK_PATH_PLATFORM)/hardware/camera/core/drv/inc \
    $(TOP)/$(MTK_PATH_PLATFORM)/external/ldvt/include \
    $(TOP)/$(MTK_PATH_PLATFORM)/hardware/camera/inc/common/camutils

#    $(TOP)/$(MTK_PATH_PLATFORM)/hardware/camera/core/src/imageio/inc \
#    $(TOP)/$(MTK_PATH_PLATFORM)/kernel/core/include/mach \
#    $(TOP)/$(MTK_PATH_CUSTOM)/hal/inc/isp_tuning \

# Add a define value that can be used in the code to indicate that it's using LDVT now.
# For print message function when using LDVT.
# Note: It will be cleared by "CLEAR_VARS", so if this line needed in other module, it
# have to be set in other module again.
ifeq ($(BUILD_MTK_LDVT),true)
    LOCAL_CFLAGS += -DUSING_MTK_LDVT
endif

#
LOCAL_STATIC_LIBRARIES := \

#
LOCAL_WHOLE_STATIC_LIBRARIES := \

#
LOCAL_SHARED_LIBRARIES := \
    libcutils \

#
LOCAL_MODULE := libcamdrv_tpipe

#
LOCAL_PRELINK_MODULE := false

#
LOCAL_MODULE_TAGS := optional

#
include $(BUILD_STATIC_LIBRARY)
# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# Only for baidu, otherwise do not set USER
#-----------------------------------------------------------------------------
USER := baidu

##############################################################################
# This value defines the base source branch, only use for baidu server build.
# when open this outside, delete this config
# Support values: rom-mtk, baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_BASE_BRANCH := rom-qc-4.1

##############################################################################
# This value defines which overlay should be choose, only use for baidu internal.
# Support values: rom-mtk, baidu-4.0
# when your product is mtk, you can choose rom-mtk, otherwise set it to baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_FRAMEWORK_OVERLAY_TYPE := rom-qc-4.1

##############################################################################
# This value defines which base this project should choose, only for baidu internal.
# Support values: S710, JRD77SS, YINS, YIGN
#-----------------------------------------------------------------------------
BAIDU_BASE_DEVICE := C8813

##############################################################################
# This value define to trigger server to build timely and daily
# if you want to enable server build, set BAIDU_SERVER_BUILD := true
# ----------------------------------------------------------------------------
BAIDU_SERVER_BUILD_ENABLE := true

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# This value will control the method of pack or unpack image and so on
# you can use mtk/qualcomm/ti/nvidia
#-----------------------------------------------------------------------------
PLATFORM := mtk

##############################################################################
# you can custom boot image and recovery image name
#-----------------------------------------------------------------------------
# BOOT_IMG := bootname
# RECOVERY_IMG := recoveryname

##############################################################################
# use for newproject, not unpack boot.img to BOOT, or not unpack recovery.img to RECOVERY
# Support Values:
# false, not unpack
#-----------------------------------------------------------------------------
# PRJ_UNPACK_BOOT_IMG := false
# PRJ_UNPACK_RECOVERY_IMG := false

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# true, use prebuilt boot.img/recovery.img
# flase, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, none boot.img/recovery.img
#-----------------------------------------------------------------------------
PREBUILT_BOOT_IMG := false
PREBUILT_RECOVERY_IMG := true

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app delapp vendor/operator media/audio/ui

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_files := media/bootanimation_hw.zip

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
# vendor_saved_apps := MtkBt

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := FMRadio MtkBt

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework secondary-framework services mediatek-framework

##############################################################################
# Directorys which you want to saved in baidu directory
#-----------------------------------------------------------------------------
baidu_saved_dirs := media/audio/ui

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
baidu_saved_files := lib/libwvm.so

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone Settings SystemUI

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy framework-yi

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# property to show/hide feature of defaultWrite Settings
override_property += \
    ro.baidu.default_write.settable=true \
    persist.sys.baidu.default_write=first_storage \
    ro.baidu.2nd_storage.format=enable \
    ro.baidu.config.dsdsmode=single

# modify for generate ota zip
override_property += \
    ro.product.device.alias=G520,g520,hwG520,hwg520

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
	ro.operator.optr \
	ro.operator.spec \
	ro.operator.seg

include $(PORT_BUILD)/main.mk

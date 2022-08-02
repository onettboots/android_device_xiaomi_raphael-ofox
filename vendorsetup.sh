#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2021 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#
        export LC_ALL="C"
        export FOX_VERSION="4.14.R11.1_2"
   	export PLATFORM_SECURITY_PATCH="2099-12-31"
   	export TW_DEFAULT_LANGUAGE="en"
	export OF_STATUS_INDENT_LEFT="48"
	export OF_STATUS_INDENT_RIGHT="48"
	export OF_SCREEN_H=2340
	export TARGET_DEVICE_ALT="raphaelin"
	export OF_TARGET_DEVICES="raphaelin,raphael"
	export OF_PATCH_AVB20=1
   	export OF_USE_MAGISKBOOT=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export FOX_USE_LZMA_COMPRESSION=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export FOX_DELETE_AROMAFM=1
	export OF_DONT_KEEP_LOG_HISTORY=1
	export OF_FBE_METADATA_MOUNT_IGNORE=1
        export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1

	export FOX_USE_NANO_EDITOR=1
        export FOX_USE_SED_BINARY=1
        export FOX_USE_TAR_BINARY=1
        export FOX_USE_XZ_UTILS=1
        export FOX_USE_GREP_BINARY=1
        export FOX_USE_UNZIP_BINARY=1
        export FOX_REMOVE_BASH=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
   	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1510672800"; # Tue Nov 14 15:20:00 GMT 2017
	export FOX_USE_SPECIFIC_MAGISK_ZIP="device/xiaomi/raphael/prebuilt/Magisk-v25.2.apk"
        export OF_MAINTAINER="OnettBoots"
        export OF_MAINTAINER_AVATAR="device/xiaomi/raphael/OnettBoots.png"

	# OTA for custom ROMs
        export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
        export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1

        # -- add settings for R11 --
        export OF_USE_TWRP_SAR_DETECT=1
        export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
        export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"
	export OF_USE_LOCKSCREEN_BUTTON=1
        #export FOX_ADVANCED_SECURITY=1
        # -- end R11 settings --

	# run a process after formatting data to work-around MTP issues
	export OF_RUN_POST_FORMAT_PROCESS=1
	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi

add_lunch_combo omni_raphael-eng
add_lunch_combo omni_raphael-userdebug

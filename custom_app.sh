
apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
	echo ">>> in custom_app for Phone"
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/%%//g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/ %[ )\%]/ /g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/\(%[0-9]\$[ds]\)%/\1/g'
	find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'
        sed -i -e "/^\.method.*getIccPinPukRetryTimes()I/,/^\.end method/d" $tempSmaliDir/smali/com/android/phone/PhoneInterfaceManager.smali
        sed -i -e "/^\.method.*getIccPin1RetryCount()I/,/^\.end method/d" $tempSmaliDir/smali/com/android/phone/PhoneInterfaceManager.smali
        sed -i -e "/^\.method.*startRecording(ILjava\/lang\/String;)Ljava\/lang\/String/,/^\.end method/d" $tempSmaliDir/smali/com/android/phone/Recorder.smali

	echo ">>> use vendor Bluetooth framework in Phone"
	rm -rf $tempSmaliDir/smali/com/android/phone/Bluetooth*
	cp Phone/smali/com/android/phone/Bluetooth* $tempSmaliDir/smali/com/android/phone/
	cp -r Phone/smali/com/mediatek $tempSmaliDir/smali/com/

elif [ "$apkBaseName" = "Settings" ];then
	echo ">>> in custom_app for Settings"
	if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
		echo ">>> delete unlock_set_baidu_slide line in $tempSmaliDir/res/xml/security_settings_picker.xml"
		sed -i '/unlock_set_baidu_slide/d' $tempSmaliDir/res/xml/security_settings_picker.xml
	fi
        find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

elif [ "$apkBaseName" = "SystemUI" ];then
       echo ">>> in custom_app for SystemUI"
       sed -i -e "/^\.method.*doInBackground(\[Lcom\/android\/systemui\/screenshot\/SaveImageInBackgroundData;)Lcom\/android\/systemui\/screenshot\/SaveImageInBackgroundData/,/^\.end method/d" $tempSmaliDir/smali/com/android/systemui/screenshot/SaveImageInBackgroundTask.smali

fi


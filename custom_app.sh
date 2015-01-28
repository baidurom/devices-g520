
apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
	echo ">>> in custom_app for Phone"
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/%%//g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/ %[ )\%]/ /g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/\(%[0-9]\$[ds]\)%/\1/g'
	find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

	echo ">>> use vendor Bluetooth framework in Phone"
	rm -rf $tempSmaliDir/smali/com/android/phone/Bluetooth*
	cp Phone/smali/com/android/phone/Bluetooth* $tempSmaliDir/smali/com/android/phone/
	cp -r Phone/smali/com/mediatek $tempSmaliDir/smali/com/

elif [ "$apkBaseName" = "Settings" ];then
	echo ">>> in custom_app for Settings"
	find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

elif [ "$apkBaseName" = "HomePro" ];then
	echo ">>> in custom_app $apkBaseName"
	sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.android.camera.Camera" packageName="com.android.gallery3d"/g' $tempSmaliDir/res/xml-hdpi/default_workspace.xml

        sed -i '/className="com.baiyi_mobile.security.ui.MainSecurityActivity"/a\<favorite className="com.baidu.musicplayer.activity.MainFragmentActivity" packageName="com.baidu.musicplayer" screen="2" spanX="1" spanY="1" x="1" y="3" \/>' $tempSmaliDir/res/xml-hdpi/default_workspace.xml

fi


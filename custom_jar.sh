
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar for android.policy"
	echo "jarBaseName: $jarBaseName  tempSmaliDir: $tempSmaliDir"
	echo ">>> remove method handleKeyguardDoneDrawing()V in baidu policy"
	sed -i -e "/^\.method.*handleKeyguardDoneDrawing()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
	echo ">>> remove method onScreenTurnedOff(I)V in baidu policy"
	sed -i -e "/^\.method.*onScreenTurnedOff(I)V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
        echo ">>> remove method sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V in baidu policy"
	sed -i -e "/^\.method.*sendTextMessage(Ljava\/lang\/String;Ljava\/lang\/String;Ljava\/lang\/String;Landroid\/app\/PendingIntent;Landroid\/app\/PendingIntent;I)V/,/^\.end method/d" $tempSmaliDir/smali/android/telephony/BaiduSmsManager.smali

elif [ "$jarBaseName" = "framework-yi" ];then
        echo ">>> in custom_jar for framework-yi"
	echo "jarBaseName: $jarBaseName  tempSmaliDir: $tempSmaliDir"
	echo ">>> remove method sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V in framework-yi"
	sed -i -e "/^\.method.*sendTextMessage(Ljava\/lang\/String;Ljava\/lang\/String;Ljava\/lang\/String;Landroid\/app\/PendingIntent;Landroid\/app\/PendingIntent;I)V/,/^\.end method/d" $tempSmaliDir/smali/android/telephony/BaiduSmsManager.smali

fi


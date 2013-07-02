
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar for android.policy"
	echo "jarBaseName: $jarBaseName  tempSmaliDir: $tempSmaliDir"
	echo ">>> remove method handleKeyguardDoneDrawing()V in baidu policy"
	sed -i -e "/^\.method.*handleKeyguardDoneDrawing()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
	echo ">>> remove method onScreenTurnedOff(I)V in baidu policy"
	sed -i -e "/^\.method.*onScreenTurnedOff(I)V/,/^\.end method/d" $tempSmaliDir/smali/com/android/internal/policy/impl/KeyguardViewMediator.smali
fi


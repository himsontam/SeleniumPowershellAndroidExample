###################################################################
# Example of long press power button and cancel in powershell ps1 #
###################################################################


# long press power button and cancel (For getting idle status = 1 FOR NOW)
# adb shell input keyevent --longpress KEYCODE_POWER
adb shell input keyevent --longpress 26
Start-Sleep -s 10
adb shell input keyevent 61
adb shell input keyevent 61  
adb shell input keyevent 66 
adb shell input keyevent 61
adb shell input keyevent 66
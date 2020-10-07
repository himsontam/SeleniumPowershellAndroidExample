#######################################################################################
# Exmple of simulate power button and cancel Android device, powershell, adb command ##
#######################################################################################

adb devices
adb shell sendevent /dev/input/event1 0001 0116 1
adb shell sendevent /dev/input/event1 0000 0000 0
adb shell sendevent /dev/input/event1 0001 0116 0
adb shell sendevent /dev/input/event1 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0047 0
adb shell sendevent /dev/input/event3 0003 0057 29
adb shell sendevent /dev/input/event3 0003 0053 896
adb shell sendevent /dev/input/event3 0003 0054 533
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 30
adb shell sendevent /dev/input/event3 0003 0053 672
adb shell sendevent /dev/input/event3 0003 0054 1180
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
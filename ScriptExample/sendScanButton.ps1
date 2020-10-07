##########################################################################################
### Example of sim human press button in powershell and adb command and android device ###
##########################################################################################


$sleep = 1

if ($args.Count -gt 0) {
    $sleep = $args[0]
}

adb shell "sendevent /dev/input/event1 1 249 0"
adb shell "sendevent /dev/input/event1 0 0 0"

while ($true) {
    adb shell "sendevent /dev/input/event1 1 249 1"
    adb shell "sendevent /dev/input/event1 0 0 0"
    Start-Sleep -s $sleep
    adb shell "sendevent /dev/input/event1 1 249 0"
    adb shell "sendevent /dev/input/event1 0 0 0"
}

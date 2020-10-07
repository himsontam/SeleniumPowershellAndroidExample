##########################################################################
# Example of inmplement powershell programming concept as a small script #
##########################################################################


# Basic script for entering the unbox password
adb shell input text "04";
adb shell input keyevent 61;
adb shell input text "5284";
adb shell input keyevent 61;
adb shell input keyevent 61;
adb shell input text "36999";
adb shell input keyevent 61;
adb shell input keyevent 66;
adb shell sleep 130;
adb shell input keyevent 66;
pause; #It can do a pause of the script and wait for the device action (eg Restart the deivces)
adb shell am broadcast -a ###### Package Name#######


$sleep = 130
adb shell input text "04";
adb shell input keyevent 61;
adb shell input text "5284";
adb shell input keyevent 61;
adb shell input keyevent 61;
adb shell input text "36999";
adb shell input keyevent 61;
adb shell input keyevent 66;
Start-Sleep -s $sleep #Can do it to get the device out of computer
adb shell input keyevent 66;
pause;
adb shell am broadcast -a ######package Name##########

################################################
# unboxing login better way
$stopwatch =  [system.diagnostics.stopwatch]::StartNew()
adb devices
adb shell input text "04";
adb shell input keyevent 61;
adb shell input text "5284";
adb shell input keyevent 61;
adb shell input keyevent 61;
adb shell input text "36999";
adb shell input keyevent 61;
adb shell input keyevent 66;
Write-Host "<============== Logging in... ==============>"
Start-Sleep -s 20
Write-Host "<============== Logged in ==============>"
$stopwatch
Write-Host "<============== Start Checking ==============>"
Do{
    adb logcat -d time > "text file Path"
    $file = Get-Content "text file Path"
    $containsWord = $file | %{$_ -match '"unboxStatus":"5"'} #"unboxStatus":"6" "isInUse":"1"
    if ($containsWord -eq $true) {
        Write-Host "<============== Got unboxStatus = 5 ==============>"
        Write-Host "<============== Done Checking ==============> "
        $stopwatch
        Start-Sleep -s 30
        $stopwatch
        adb shell input keyevent 66;
        adb shell input keyevent 66;
        Write-Host "<============== Restart Button Pressed ==============>"
    } else {
        Write-Host "<============== Doesn't Match. Try Again!!! ==============>"
    }
} Until ($containsWord -eq $true)

$stopwatch
Start-Sleep -s 20
$stopwatch
Write-Host "<============== Restarting... ==============>"
adb wait-for-device
$stopwatch
Write-Host "<============== Done! Logged In ==============>"
pause
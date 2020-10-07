##########################################################
# Example of using adb command in powersehll ps1 file ####
##########################################################

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
adb shell am broadcast -a ######package Name##########

adb shell input text "04";
adb shell input keyevent 61;
adb shell input text "5284";
adb shell input keyevent 61;
adb shell input keyevent 61;
adb shell input text "36999";
adb shell input keyevent 61;
adb shell input keyevent 66;
Start-Sleep -s 200 #Can do it to get the device out of computer
adb shell input keyevent 66;
adb wait-for-device
pause;
adb shell am broadcast -a ######package Name##########

# # long press power button and cancel (For getting idle status = 1 FOR NOW)
adb shell input keyevent --longpress 26
adb shell sleep 2
adb shell input keyevent 61 
adb shell input keyevent 66 
adb shell input keyevent 61
adb shell input keyevent 66

#Example of how to do a prompt question to contiute
adb shell input text "04";
adb shell input keyevent 61;
adb shell input text "5284";
adb shell input keyevent 61;
adb shell input keyevent 61;
adb shell input text "36999";
adb shell input keyevent 61;
$choice = Read-Host -Prompt 'What do u want?'
if ($choice -eq "C") {
	adb shell input keyevent 66;
} else {
	adb reboot;
}
adb shell sleep 130;
adb shell input keyevent 66;
pause;
adb shell am broadcast -a ######package Name##########

#Do a pop up
$Shell = New-Object -ComObject "WScript.Shell"
$Button = $Shell.Popup("Click OK to continue.", 0, "Hello", 0)

#Pop for input from console
$serverName = Read-Host -Prompt 'Server name to process'
if ($serverName) {
	Write-Host "We can now use the server name [$serverName] in our code"
} else {
	Write-Warning -Message "No server name input."
}

#Script made from getevent and sendevenet
adb shell sleep 180
adb shell sendevent /dev/input/event3 0003 0057 171
adb shell sendevent /dev/input/event3 0003 0053 459
adb shell sendevent /dev/input/event3 0003 0054 692
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 172
adb shell sendevent /dev/input/event3 0003 0053 509
adb shell sendevent /dev/input/event3 0003 0054 1931
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 173
adb shell sendevent /dev/input/event3 0003 0053 227
adb shell sendevent /dev/input/event3 0003 0054 1579
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 174
adb shell sendevent /dev/input/event3 0003 0053 526
adb shell sendevent /dev/input/event3 0003 0054 922
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 175
adb shell sendevent /dev/input/event3 0003 0053 552
adb shell sendevent /dev/input/event3 0003 0054 1588
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 176
adb shell sendevent /dev/input/event3 0003 0053 516
adb shell sendevent /dev/input/event3 0003 0054 1435
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 177
adb shell sendevent /dev/input/event3 0003 0053 533
adb shell sendevent /dev/input/event3 0003 0054 1773
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 178
adb shell sendevent /dev/input/event3 0003 0053 212
adb shell sendevent /dev/input/event3 0003 0054 1552
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 179
adb shell sendevent /dev/input/event3 0003 0053 561
adb shell sendevent /dev/input/event3 0003 0054 1093
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 180
adb shell sendevent /dev/input/event3 0003 0053 875
adb shell sendevent /dev/input/event3 0003 0054 1447
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 181
adb shell sendevent /dev/input/event3 0003 0053 896
adb shell sendevent /dev/input/event3 0003 0054 1612
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 182
adb shell sendevent /dev/input/event3 0003 0053 900
adb shell sendevent /dev/input/event3 0003 0054 1738
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 183
adb shell sendevent /dev/input/event3 0003 0053 915
adb shell sendevent /dev/input/event3 0003 0054 1753
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 184
adb shell sendevent /dev/input/event3 0003 0053 903
adb shell sendevent /dev/input/event3 0003 0054 1750
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

###########################################################
#Open Setting

adb shell sendevent /dev/input/event3 0003 0057 156        
adb shell sendevent /dev/input/event3 0003 0053 208        
adb shell sendevent /dev/input/event3 0003 0054 775        
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295 
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

# #######################################
# #type password

adb shell sendevent /dev/input/event3 0003 0057 157
adb shell sendevent /dev/input/event3 0003 0053 171
adb shell sendevent /dev/input/event3 0003 0054 1052
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 158
adb shell sendevent /dev/input/event3 0003 0053 164
adb shell sendevent /dev/input/event3 0003 0054 1480
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 159
adb shell sendevent /dev/input/event3 0003 0053 172
adb shell sendevent /dev/input/event3 0003 0054 1484
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 160
adb shell sendevent /dev/input/event3 0003 0053 157
adb shell sendevent /dev/input/event3 0003 0054 1497
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 161
adb shell sendevent /dev/input/event3 0003 0053 170
adb shell sendevent /dev/input/event3 0003 0054 1480
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 162
adb shell sendevent /dev/input/event3 0003 0053 160
adb shell sendevent /dev/input/event3 0003 0054 1471
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 163
adb shell sendevent /dev/input/event3 0003 0053 149
adb shell sendevent /dev/input/event3 0003 0054 1452
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

Start-Sleep -s 5

# #Open WIFI and back

adb shell sendevent /dev/input/event3 0003 0057 131
adb shell sendevent /dev/input/event3 0003 0053 557
adb shell sendevent /dev/input/event3 0003 0054 809
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 132
adb shell sendevent /dev/input/event3 0003 0053 842
adb shell sendevent /dev/input/event3 0003 0054 2078
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

Start-Sleep -s 5

# #Open connected device and back

adb shell sendevent /dev/input/event3 0003 0057 133  
adb shell sendevent /dev/input/event3 0003 0053 671  
adb shell sendevent /dev/input/event3 0003 0054 1093 
adb shell sendevent /dev/input/event3 0001 0330 1    
adb shell sendevent /dev/input/event3 0000 0000 0    
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 134
adb shell sendevent /dev/input/event3 0003 0053 828
adb shell sendevent /dev/input/event3 0003 0054 2096
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

########################################################

# #Open second WIFI 
adb shell sendevent /dev/input/event3 0003 0057 169
adb shell sendevent /dev/input/event3 0003 0053 519
adb shell sendevent /dev/input/event3 0003 0054 699
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

#######################################################
# #First and second WIFI 

adb shell sendevent /dev/input/event3 0003 0057 188        
adb shell sendevent /dev/input/event3 0003 0053 516        
adb shell sendevent /dev/input/event3 0003 0054 561        
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295 
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

Start-Sleep -s 3

adb shell sendevent /dev/input/event3 0003 0057 189        
adb shell sendevent /dev/input/event3 0003 0053 805        
adb shell sendevent /dev/input/event3 0003 0054 2121       
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295 
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0

Start-Sleep -s 3

adb shell sendevent /dev/input/event3 0003 0057 190        
adb shell sendevent /dev/input/event3 0003 0053 543        
adb shell sendevent /dev/input/event3 0003 0054 731        
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295 
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0
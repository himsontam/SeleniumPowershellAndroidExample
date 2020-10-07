######################################################################
# Another example of selenium and powershell #########################
######################################################################



# adb shell sendevent /dev/input/event3 0003 0057 8
# adb shell sendevent /dev/input/event3 0003 0053 836
# adb shell sendevent /dev/input/event3 0003 0054 1625
# adb shell sendevent /dev/input/event3 0001 0330 1
# adb shell sendevent /dev/input/event3 0000 0000 0
# adb shell sendevent /dev/input/event3 0003 0057 4294967295
# adb shell sendevent /dev/input/event3 0001 0330 0
# adb shell sendevent /dev/input/event3 0000 0000 0

# adb shell input keyevent 61
# adb shell input keyevent 61
# adb shell input keyevent 61
# adb shell input keyevent 66


$stopwatch =  [system.diagnostics.stopwatch]::StartNew();
$YourURL = "#############URL#############"; # Website we'll log to


$env:PATH += ";C:\Temp\PSL\"; # Adds the path for ChromeDriver.exe to the environmental variable 
Add-Type -Path "C:\Temp\PSL\WebDriver.dll"; # Adding Selenium's .NET assembly (dll) to access it's classes in this PowerShell session
$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions;
$chromeOptions.addArguments("start-maximized");
$ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeOptions); # Creates an instance of this class to control Selenium and stores it in an easy to handle variable

$ChromeDriver.Navigate().GoToURL($YourURL); # Browse to the specified website

# MDM Username
$ChromeDriver.FindElementsByXPath("//input[@type='text']").SendKeys("############# UserName #############"); # Methods to find the input textbox for the username and type it into the textbox

# MDM Password
$ChromeDriver.FindElementsByXPath("//input[@type='password']").SendKeys("########## Password ################");
# Methods to find the input textbox for the password and type it into the textbox

$ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div[4]/div[3]/div").Click(); # Click Login Button

Start-Sleep -s 5

$ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div/ul/li[3]/div/span[2]").Click();
Start-Sleep -s 5
$ChromeDriver.FindElementsByXPath("//div[@id='appList']/div[6]/div[4]/span/span/span").Click();
Start-Sleep -s 5
$ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[3]/div/div/div[4]/div/div[2]/div/div[5]/div[3]/div/div[2]/div[3]/table/tbody/tr[35]/td/div/label/span/span").Click();
Start-Sleep -s 5
$ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[3]/div/div/div[4]/div/div[3]/span/span").Click();
Start-Sleep -s 60

adb shell sendevent /dev/input/event3 0003 0057 8
adb shell sendevent /dev/input/event3 0003 0053 836
adb shell sendevent /dev/input/event3 0003 0054 1625
adb shell sendevent /dev/input/event3 0001 0330 1
adb shell sendevent /dev/input/event3 0000 0000 0
adb shell sendevent /dev/input/event3 0003 0057 4294967295
adb shell sendevent /dev/input/event3 0001 0330 0
adb shell sendevent /dev/input/event3 0000 0000 0


# Cleaning up after ourselves!
Pause # Adding a stop, after pressing enter within the console the Selenium session will end everything will be closed
# Remove-Variable -Name PSCred # This removes the stored user/password from within the $PSCred variable
Function Stop-ChromeDriver {Get-Process -Name chromedriver -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue}
$ChromeDriver.Close() # Close selenium browser session method
$ChromeDriver.Quit() # End ChromeDriver process method
Stop-ChromeDriver # Function to make sure Chromedriver process is ended (double-tap!)
$stopwatch
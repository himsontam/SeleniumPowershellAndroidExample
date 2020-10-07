#####################################################################
########### Test Example Function, Example of Powershell ############
#####################################################################


#Environmental Setting
function EnvironmentalSetting {
    $env:PATH += ";C:\Temp\PSL\"; # Adds the path for ChromeDriver.exe to the environmental variable 
    Add-Type -Path "C:\Temp\PSL\WebDriver.dll"; # Adding Selenium's .NET assembly (dll) to access it's classes in this PowerShell session
    
}

function MaxBrowserSize {
    $chromeOptions.addArguments("start-maximized"); #Display
}

function Headless {
    # $chromeOptions.addArguments("window-size=1280,1696");
    # $ChromeOptions.addArguments('headless');#############
    
}

function WebsiteNavigation{
    # Website link
    $YourURL = "################URL###############"; #EXT UAT
    # $YourURL = "################URL###############"; #INT UAT
    # Browse to the specified website
    $ChromeDriver.Navigate().GoToURL($YourURL);
}

# MDM login Username and password 
function usernameandPassword {
    $ChromeDriver.FindElementsByXPath("//input[@type='text']").SendKeys("################UserName###############") # Methods to find the input textbox for the username and type it into the textbox
    $ChromeDriver.FindElementsByXPath("//input[@type='password']").SendKeys("################Password###############") # Methods to find the input textbox for the password and type it into the textbox
    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div[4]/div[3]/div").Click() # Click Login Button
}

# Terminal adb devices command
function 3LoginUnbox {
    adb devices
    adb shell input text "04";
    adb shell input keyevent 61;
    adb shell input text "5284";
    adb shell input keyevent 61;
    adb shell input keyevent 61;
    adb shell input text "36999";
    adb shell input keyevent 61;
    adb shell input keyevent 66;
    Start-Sleep -s 80
    adb shell input keyevent 66;

    Start-Sleep -s 120
}

function details3LoginUnbox {
    Start-Sleep -s 240
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
        adb logcat -d time > "################### Text File Path ###########################"
        $file = Get-Content "################### Text File Path ###########################"
        $containsWord = $file | %{$_ -match '"unboxStatus":"5"'} #"unboxStatus":"6" "isInUse":"1", base on logcat tag / message
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

    Start-Sleep -s 200
}

function ClickedDevicePage {
    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div/ul/li[2]/div").Click() 
    "Clicking Device Page"

    $ChromeDriver.FindElementsByXPath("(//input[@type='text'])[11]").Click() 
    "Device Page"
}

function ClickedWIFIProfilePage {
    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div/ul/li[5]/div/span[2]").Click();
    Start-Sleep -s 3
}

function 194Device {
    $ChromeDriver.FindElementsByXPath("(//input[@type='text'])[11]").SendKeys("####serial number####") # Search 194 terminal device
    "Enter ####serial number#### terminal device to search bar"

    Start-Sleep -s 5

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div/div/div[2]/span/span/i").Click() # Click Search Icon
    "Clicked Search Icon"

    Start-Sleep -s 10

    $ChromeDriver.FindElementsByLinkText("####serial number####").Click() 
    "####serial number#### device found"
}

function 205Device {
    $ChromeDriver.FindElementsByXPath("(//input[@type='text'])[11]").SendKeys("####serial number####") # Search 205 terminal device
    "Enter ####serial number#### terminal device to search bar"

    Start-Sleep -s 5

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div/div/div[2]/span/span/i").Click() # Click Search Icon
    "Clicked Search Icon"

    Start-Sleep -s 10
    "Searching ####serial number#### device"
    $ChromeDriver.FindElementsByLinkText("###serial number####").Click() 
    "####serial number###### device found"
}

function RefreshBrowser {
    $ChromeDriver.navigate().refresh();
    "Browser Refreshing"
}

function unbindDevice {
    $ChromeDriver.FindElementsByXPath("/html/body/div[1]/div/div[2]/div/div[3]/div/div/div[1]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/span/span/span[text()='Unbind']").Click() 
    "Unbind Button Clicked"
    Start-Sleep -s 3
    $ChromeDriver.FindElementsByXPath("//button[2]/span").Click() # Click ok
    "ok Clicked"
    Start-Sleep -s 3

    adb shell input keyevent 66;
    adb shell input keyevent 61;
    adb shell input keyevent 66;
    "Terminal Restart Button Clicked"
}

# ScreenShot
function ScreenShot (){
    # $ChromeDriver.GetScreenshot().SaveAsFile("################### iamge File Path ###########################")
    $ChromeDriver.GetScreenshot().SaveAsFile("################### iamge File Path ###########################")
}

function rest ([int] $second){
    Start-Sleep -s $second
}

function close {
    $ChromeDriver.Close() # Close selenium browser session method
}

function quit {
    $ChromeDriver.Quit() # End ChromeDriver process method
}

Function Stop-ChromeDriver {
    Get-Process -Name chromedriver -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue
}

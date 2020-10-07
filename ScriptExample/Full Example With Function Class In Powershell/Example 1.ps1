<#
    This is the test cases powerschell script
#>
Import-Module "##########################Correct File Path#############################" -Force #Function 1, MainFunction.ps1

Import-Module "##########################Correct File Path#############################" -Force #Function 2, ExampleFunction2.ps1

$stopwatch =  [system.diagnostics.stopwatch]::StartNew(); #Start Counting Time
EnvironmentalSetting #Function

$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions;
MaxBrowserSize
# Headless
$ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeOptions); # Creates an instance of this class to control Selenium and stores it in an easy to handle variable

WebsiteNavigation #Function
usernameandPassword #Function
rest(5) #Function
SchedulingInstallNow #Function, @Test cases 1@, {Scheduling} (User can set the start time and date for rule) [install now]
ScreenShot #Function
3LoginUnbox

$stopwatch
# Cleaning and closing Website and cahce
Pause 
close
quit
Stop-ChromeDriver # Function to make sure Chromedriver process is ended (double-tap!)

#End Counting Time
$stopwatch








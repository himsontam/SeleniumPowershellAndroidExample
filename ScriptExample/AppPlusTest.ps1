##############################################################################
################ Example of using powershell ans selenium ####################
##############################################################################



$stopwatch =  [system.diagnostics.stopwatch]::StartNew();
$YourURL = "*****URL******"; # Website we'll log to


$env:PATH += ";C:\Temp\PSL\"; # Adds the path for ChromeDriver.exe to the environmental variable 
Add-Type -Path "C:\Temp\PSL\WebDriver.dll"; # Adding Selenium's .NET assembly (dll) to access it's classes in this PowerShell session
$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions;
$chromeOptions.addArguments("start-maximized");
$ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeOptions); # Creates an instance of this class to control Selenium and stores it in an easy to handle variable

$ChromeDriver.Navigate().GoToURL($YourURL); # Browse to the specified website

# MDM Username
$ChromeDriver.FindElementsByXPath("//input[@type='text']").SendKeys("*****UserName******"); # Methods to find the input textbox for the username and type it into the textbox

# MDM Password
$ChromeDriver.FindElementsByXPath("//input[@type='password']").SendKeys("*****Password******");
# Methods to find the input textbox for the password and type it into the textbox

$ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div/div/div[4]/div[3]/div").Click(); # Click Login Button
Start-Sleep -s 3

$ChromeDriver.FindElementsByXPath("//div/div/ul[1]/li[3]/div/span[2]").Click();
Start-Sleep -s 3

$ChromeDriver.FindElementsByXPath("//div/div[2]/div/div[2]/span[4]").Click();
Start-Sleep -s 3

$ChromeDriver.FindElementsByXPath("//tr[1]/td[4]/div/span").Click();
# .el-table__row:nth-of-type(1) .no
# Appled Device Button X Path and CSs

//tr[1]/td[1]/div/span[2] # For text


Start-Sleep -s 3

done

# Cleaning up after ourselves!
Pause # Adding a stop, after pressing enter within the console the Selenium session will end everything will be closed
# Remove-Variable -Name PSCred # This removes the stored user/password from within the $PSCred variable
Function Stop-ChromeDriver {Get-Process -Name chromedriver -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue}
$ChromeDriver.Close() # Close selenium browser session method
$ChromeDriver.Quit() # End ChromeDriver process method
Stop-ChromeDriver # Function to make sure Chromedriver process is ended (double-tap!)
$stopwatch
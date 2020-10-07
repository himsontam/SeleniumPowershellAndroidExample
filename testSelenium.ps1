################################################################
# Example of demo website and selenium and powershell ##########
################################################################


$YourURL = "http://demo.guru99.com/test/delete_customer.php"

$env:PATH += ";C:\Temp\PSL\"
Add-Type -Path "C:\Temp\PSL\WebDriver.dll" 
$ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver 
# $SnapShot = New-Object OpenQA.Selenium.TakesScreenshot

$ChromeDriver.Navigate().GoToURL($YourURL) 
# EnterPassword
# $ChromeDriver.FindElementsByName("cusid").sendKeys("53920");
# $ChromeDriver.FindElementsByName("submit").submit();

# $ChromeDriver.page_source | Out-File "C:\Temp\PSL\GoogleSearchResults.html" -Force
# $screenshot = $ChromeDriver.GetScreenshot()
# $screenshot.SaveAsFile("C:\Temp\PSL\test.png")
$ChromeDriver.GetScreenshot().SaveAsFile("C:\Temp\PSL\test.png") # ScreenShot

#Function powershell
function EnterPassword { 

$ChromeDriver.FindElementsByName("cusid").sendKeys("53920");
$ChromeDriver.FindElementsByName("submit").submit(); 

}


# $SnapShot.takeSnapShot($ChromeDriver, "c://test.png"); 
# $ChromeDriver.get_screenshot_as_file("/Path/to/saved/file.jpg")
# $Alert.$ChromeDriver.switchTo().alert();

# # Screen Shot with powershell
# $File = "C:\Users\himson.tam\OneDrive - BBPOS\MyFancyScreenshot.bmp"
# Add-Type -AssemblyName System.Windows.Forms
# Add-type -AssemblyName System.Drawing
# # Gather Screen resolution information
# $Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
# $Width = $Screen.Width
# $Height = $Screen.Height
# $Left = $Screen.Left
# $Top = $Screen.Top
# # Create bitmap using the top-left and bottom-right bounds
# $bitmap = New-Object System.Drawing.Bitmap $Width, $Height
# # Create Graphics object
# $graphic = [System.Drawing.Graphics]::FromImage($bitmap)
# # Capture screen
# $graphic.CopyFromScreen($Left, $Top, 0, 0, $bitmap.Size)
# # Save to file
# $bitmap.Save($File) 
# Write-Output "Screenshot saved to:"
# Write-Output $File
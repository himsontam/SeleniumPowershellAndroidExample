Import-Module "########################### Main Function File Path ################################" -Force # Main Function


$i=1
While ($i -le 11)
{
    $stopwatch =  [system.diagnostics.stopwatch]::StartNew(); #Start Counting Time
    EnvironmentalSetting # Main Function

    $chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions;
    MaxBrowserSize
    # Headless
    $ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeOptions); # Creates an instance of this class to control Selenium and stores it in an easy to handle variable

    WebsiteNavigation # Main Function
    usernameandPassword # Main Function
    rest(5) # Main Function

    ClickedDevicePage # Main Function
    # 205Device # Main Function
    194Device # Main Function
    rest(5) # Main Function

    details3LoginUnbox # Main Function

    RefreshBrowser # Main Function
    rest(10) # Main Function
    unbindDevice # Main Function
    rest(5) # Main Function
    RefreshBrowser # Main Function
    ScreenShot # Main Function

    $stopwatch
    # Cleaning and closing Website and cahce
    # Pause 
    rest(30) # Main Function
    close
    quit
    Stop-ChromeDriver # Function to make sure Chromedriver process is ended (double-tap!)

    #End Counting Time
    $stopwatch

    $i
    $i++
}




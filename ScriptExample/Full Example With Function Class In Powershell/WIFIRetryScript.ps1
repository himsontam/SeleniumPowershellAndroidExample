Import-Module "################################################## Main Function file Path #################################################" -Force # Main Function

Import-Module "################################################## WIFIRetryTestCaseFunction #################################################" -Force # WIFIRetryTestCaseFunction

$i=1
While ($i -eq 1)
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

    ClickedWIFIProfilePage # Main Function

    CreateXXXXXAPWIFIFunction # WIFIRetryTestCaseFunction
    Write-Host "<============== start 60s ============>"
    rest(60) # Main Function
    Write-Host "<============== end 60s ==============>"
    # Pause

    CreateGLAR75082eWIFIFunction
    Write-Host "<============== start 60s ============>"
    rest(60) # Main Function
    Write-Host "<============== end 60s ==============>"

    # Pause

    CreateGLAR75082e5GWIFIFunction # WIFIRetryTestCaseFunction
    Write-Host "<============== start 60s ============>"
    rest(60) # Main Function
    Write-Host "<============== end 60s ==============>"
    # Pause

    $number = Read-Host -Prompt 'Number:'
    if ($number -eq 1) {
        i=1
        Write-Host "continue"
    } else {
        i=0
        Write-Warning -Message "fail"
    }

    # rest(60) # Main Function
    # DeleteWIFIFunction # WIFIRetryTestCaseFunction

    # Cleaning and closing Website and cahce    
    Pause 
    close
    quit
    Stop-ChromeDriver # Function to make sure Chromedriver process is ended (double-tap!)

    #End Counting Time
    $stopwatch
}
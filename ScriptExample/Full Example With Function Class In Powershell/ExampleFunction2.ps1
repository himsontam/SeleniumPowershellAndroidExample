# Scheduling
# User can set the start time and date for rule
# install now

function SchedulingInstallNow {
    $ChromeDriver.FindElementsByXPath("/html/body/div[1]/div/div[1]/div/div/ul[1]/li[4]/div/span[text()='Rules']").Click();
    Start-Sleep -s 3
    "Clicked Rule"

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div/span/span[text()='Create new rule']").Click();
    Start-Sleep -s 3
    "Clicked Create new rule"

    $ChromeDriver.FindElementsByXPath("//*[@class='el-width-d vertical-middle el-input el-input--medium'] //input[@placeholder='Enter Name']").SendKeys("test");
    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div/div[2]").Click();
    Start-Sleep -s 3
    "Enter Baseline Rule's Name"

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div/div[2]/div[3]/div[2]/div/span[text()='Add condition']").Click();
    Start-Sleep -s 3
    "Clicked Add Condition"

    $ChromeDriver.FindElementsByXPath("//*[@class='el-input el-input--medium el-input--suffix']//input[@type='text' and @placeholder='Please select']").Click();
    Start-Sleep -s 3
    "Drop Down List"

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div/div[2]/div[3]/div[2]/div/div/div[2]/div/div/ul/li[9]//span[text()='Serial #']").Click();
    Start-Sleep -s 3
    "Clicked Serial #"

    $ChromeDriver.FindElementsByXPath("(//input[@type='text'])[6]").SendKeys("XXXXXXXX Serial Number XXXXXXX");
    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div/div[2]/div[3]/div[2]/div[2]").Click();
    Start-Sleep -s 3
    "Enter Serial #"

    $ChromeDriver.FindElementsByXPath("//span[text()='XXXXXXX']").Click();
    Start-Sleep -s 3
    "Selected XXXXXX App"

    $ChromeDriver.FindElementsByXPath("//div[@id='app']/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div/div[3]/div[2]/span[3]/span").Click();
    Start-Sleep -s 3
    "Clicked Apply"

}


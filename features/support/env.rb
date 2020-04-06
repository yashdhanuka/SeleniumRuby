
require 'selenium-webdriver'

Before do
    
    @driver = Selenium::WebDriver.for :chrome
end

After do
    @driver.quit
end

def driver
    @driver
end

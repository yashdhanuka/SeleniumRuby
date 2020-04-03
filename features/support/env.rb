
require 'selenium-webdriver'

Before do
    caps = Selenium::WebDriver::Remote::Capabilities.new
    caps['browser'] = 'Chrome'
    caps['browser_version'] = '80.0'
    caps['os'] = 'Windows'
    caps['os_version'] = '10'
    caps['resolution'] = '1024x768'
    caps['name'] = 'Bstack-[Ruby] Sample Test'
    
    @driver = Selenium::WebDriver.for(:remote,
  :url => "http://yashdhanuka1:oEbPGjWLWEni5cpXmvFM@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)
end

After do
    @driver.quit
end

def driver
    @driver
end

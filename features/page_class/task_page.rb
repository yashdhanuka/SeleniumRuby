require 'selenium-webdriver'

class Capabilty

    def initialize(driver)
        @driver = driver
        @wait = Selenium::WebDriver::Wait.new(:timeout => 50)
        action = Selenium::WebDriver::ActionBuilder
    end

    def getURL
        @driver.get "https://www.browserstack.com/automate/capabilities"
        @driver.manage.window.maximize
    end

    def common
        x = @wait.until { driver.find_element(:css => 'li.selenium-2-3.active') }
        @driver.execute_script("arguments[0].scrollIntoView()", x)

        #click os dropdown
        osDropdown = @wait.until { @driver.find_element(:css => 'div.doc-selector-container.hide-xs.hide-sm') }
        @driver.action.move_to(osDropdown).click.perform
    end


    def selectBrowser(os, browser, version)

        #select os
        osSelect = @wait.until { @driver.find_element(:css => "a[data-os='"+os+"']") }
        @driver.action.move_to(osSelect).click.perform

        #click browser dropdown
        browserDD = @wait.until { @driver.find_element(:id => "doc-browser-trigger") }
        @driver.action.move_to(browserDD).click.perform

        #select browser
        browserSelect = @wait.until { @driver.find_element(:css => "a[data-browser='"+browser+"'][data-browser-version='"+version+"']") }
        @driver.execute_script("arguments[0].click()", browserSelect)
        #@driver.action.move_to(browserSelect).click.perform
    end

    def selectMobile(os, device, version)
        #select mobile os
        osSel = @wait.until { @driver.find_element(:css => "a[data-os='"+os+"']") }
        #@driver.action.move_to(osSel).click.perform
        @driver.execute_script("arguments[0].click()", osSel)

        #click mobile dropdown
        mobileDD = @wait.until { @driver.find_element(:id => "doc-device-trigger") }
        @driver.action.move_to(mobileDD).click.perform

        #select mobile
        mobile = @wait.until { @driver.find_element(:css => "a[data-device-name='"+device+"']") }
        #@driver.action.move_to(mobile).click.perform
        @driver.execute_script("arguments[0].click()", mobile)

    end

    def capabilityCodeRHS
        #RHS side
        sleep 2
        capability = @wait.until { @driver.find_element(:css => 'ol.custom-ordered') }
        code = capability.text
    end

end


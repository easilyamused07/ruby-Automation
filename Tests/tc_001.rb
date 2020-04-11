require 'selenium-webdriver'

#Selenium::WebDriver::Chrome::Service#driver_path="/home/workspace/learn-rails/chromedriver.exe"

caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
driver.manage.window.maximize

driver.get("https://www.facebook.com")

#enter username
driver.find_element(:id, "email").send_keys("username1")

#enter password
driver.find_element(:name, "pass").send_keys("password123")

#clear text from element
#driver.find_element(:name, "pass").clear

#click on login button
#driver.find_element(:xpath,"//input[@type='submit']").click

#click on Forgotten account link using elements innertext
#driver.find_element(:xpath, "//a[contains(.,'Forgot account?')]").click

#click on radio button (Female)
driver.find_element(:name, "sex").click

#select option from dropdown or multiple items from a list
month = Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "month"))
day = Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "day"))
year = Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "year"))

month.select_by(:text, "Jul")
day.select_by(:text, "7")
year.select_by(:text, "1986")
#month.deselect_all
#month.options --> will return all avaliable options in drop down
#month.options.size --> will return count
#month.selected_options --> will return all values selected from list
#month.selected_options.size --> will return count of selected items in list




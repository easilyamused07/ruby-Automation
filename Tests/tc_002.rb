require 'selenium-webdriver'

#Selenium::WebDriver::Chrome::Service#driver_path="/home/workspace/learn-rails/chromedriver.exe"

caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
driver.manage.window.maximize

driver.get("https://www.facebook.com")


driver.find_element(:id, "email").send_keys("username123")
#perform keyboard actions or mouse operations using ActionBuilder class
driver.action.send_keys(:tab).perform
driver.action.send_keys("password123").perform
driver.action.send_keys(:enter).perform


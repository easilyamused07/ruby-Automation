require 'selenium-webdriver'

Before do
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
  $driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
  $driver.manage.window.maximize
  $driver.get("https://the-alpha-blog.herokuapp.com/")
  $wait = Selenium::WebDriver::Wait.new(:timeout => 10)  
end

After do
  $driver.quit
end

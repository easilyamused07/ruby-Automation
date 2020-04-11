require 'test/unit'
require 'selenium-webdriver'


class TC_002_Validate_Login_Functionality < Test::Unit::TestCase

  def setup
    #if needed include the driver path 'chromedriver.exe' here for reference
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
    @driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
    @driver.manage.window.maximize
    @driver.get("https://www.facebook.com")
  end

  def teardown
    @driver.quit
  end

  def test_Login
    actualURL = @driver.current_url
    assert_equal "https://www.facebook.com/",actualURL,"[Error] - Actual URL not matched with execpted"
    @driver.find_element(:id, "email").send_keys("username1")
    @driver.find_element(:name,"pass").send_keys("password1")
    @driver.find_element(:xpath,"//input[@type='submit']").click
  end

end

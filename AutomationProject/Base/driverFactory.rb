require 'selenium-webdriver'
require 'yaml'
require 'test/unit'

class AutomationProjectBase < Test::Unit::TestCase

  def setup
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions"     => {detach: true})
    @@driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
    @@driver.manage.window.maximize
    config = YAML.load_file'../Config/config.yml'
    @@driver.get(config['applicationURL'])
  end

  def teardown
    @@driver.quit
  end

end

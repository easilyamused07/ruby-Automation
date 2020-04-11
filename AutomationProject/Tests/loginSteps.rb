require 'test/unit'
require 'selenium-webdriver'
require '../Base/driverFactory'
require '../Pages/login'
require '../Assertions/assert'
require 'yaml'

class LogInSteps < AutomationProjectBase

  @@config = YAML.load_file'../Config/config.yml'

  def test_UserDoesNotExsist
    login = Login.new @@driver
    validation = Assert.new
    url_res = validation.validateURL(@@driver,@@config['applicationURL'])
    assert_true url_res, "[Error] - Login Page is not as expected."
    login.enterUsername "username1"
    login.enterPassword "pw"
    login.clickLogIn
  end


end

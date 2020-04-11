require 'test/unit'

#you can use assertions when working with test/unit
# assert_true
# assert_false
# assert_equals
# assert_not_exuals
#class must always be a child or sub class of Test::Unit::TestCase
class Verify_Login < Test::Unit::TestCase

  #you can include code that you want to execute before each test in setup method
  def setup
    puts "start browser and enter url"
  end

  #methods inside this class must always start with "test"
  def test_Case1
    puts "This is the test code"
    assert_true true, "[Error] - Actual is not matching with Expected."
  end

  def test_Case2
    puts "This is the test case 2"
    assert_equal "hello", "hello", "[Error] - Actual String is not as Expected."
  end

  #any code you want to execute after each test case you can include in teardown method
  def teardown
    puts "close browser"
  end
end


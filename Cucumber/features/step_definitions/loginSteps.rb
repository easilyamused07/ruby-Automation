
Given("User is on login page") do
  begin
    $wait.until{$driver.find_element(:xpath,"//button[contains(.,'Login')]")}
  ensure
  end
  $driver.find_element(:xpath, "//button[contains(.,'Login')]").click
end

And("User enter email {string}") do |email|
  begin
    $wait.until{$driver.find_element(:xpath,"//input[contains(@placeholder,'Enter email')]")}
  ensure
  end	  
  $driver.find_element(:xpath, "//input[contains(@placeholder,'Enter email')]").send_keys(email)
end

And("User enter password {string}") do |pw|
  begin
    $wait.until{$driver.find_element(:xpath,"//input[contains(@id,'session_password')]")}
  ensure
  end	  
  $driver.find_element(:xpath,"//input[contains(@id,'session_password')]").send_keys(pw)
end

And("User click login button") do
  $driver.find_element(:xpath,"//input[contains(@type,'submit')]").click
end

Then("User should be logged in successfully") do
  begin
    $wait.until{$driver.find_element(:xpath,"//div[contains(@id,'notice')][contains(.,'You have successfully logged in')]")}
  ensure
  end
end



Feature: Verify Login Functionality

   Scenario: Login with valid credentials
      Given User is on login page
      And User enter email "ramirezcarla21@yahoo.com"
      And User enter password "password"
      And User click login button
      Then User should be logged in successfully

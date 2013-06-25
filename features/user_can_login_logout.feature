Feature: Users can Login and logout
  In order to save my profile or comment
  As a user
  I want to login and logout

  Scenario: Login
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Login"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Submit"
    Then I should see "Signed in successfully."
    And I should see "Logout"
    And I should not see "Login"
    And I should see "bob@example.com"

  Scenario: Logout
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Login"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Submit"
    Then I should see "Signed in successfully."
    And I should see "Logout"
    And I click "Logout"
    Then I should see "Signed out successfully."

  Scenario: Wrong Password
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Login"
    And I fill in "bob@example.com" for "Email"
    And I fill in "wrong password" for "Password"
    And I press "Submit"
    Then I should see "Invalid email or password."

  Scenario: Wrong Username
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Login"
    And I fill in "betty@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Submit"
    Then I should see "Invalid email or password."
Feature: Users can Log In and log out
  In order to save my profile or comment
  As a user
  I want to log in and log out

  Scenario: Log In
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should see "Log Out"
    And I should not see "Log In"
    And I should see "bob@example.com"

  Scenario: Log Out
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should see "Log Out"
    And I click "Log Out"
    Then I should see "Signed out successfully."

  Scenario: Wrong Password
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "wrong password" for "Password"
    And I press "Sign in"
    Then I should see "Invalid email or password."

  Scenario: Wrong Username
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "betty@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "Invalid email or password."
Feature: User signs up
  User story here
  something, something
  to make money....

  Scenario: Happy path
    When I go to the homepage
    And I click "Sign up"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I fill in "password1" for "Password confirmation"
    And I press "Submit"
    Then I should see "You have signed up successfully."

  Scenario: Skipping password
    When I go to the homepage
    And I click "Sign up"
    And I fill in "bob@example.com" for "Email"
    And I fill in "" for "Password"
    And I press "Submit"
    Then I should see "Password can't be blank"

  Scenario: Invalid email
    When I go to the homepage
    And I click "Sign up"
    And I fill in "bobexample.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Submit"
    Then I should see "Email is invalid"
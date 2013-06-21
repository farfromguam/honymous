Feature: Profile Actions
  User story here
  something, something
  to make money....

  Scenario: See Create a Profile link
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Log In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "| Create a profile |"

  Scenario: Create Your Profile
    Given the user "bob@example.com" with password "password1" is logged in
    When I go to the homepage
    Then I should see "| Create a profile |"
    When I press "Create a profile"
    Then I should see "Your Profile"
    And I fill in "Bob Thompson" for "Name"
    And I fill in "A short order cook." for "A one-liner to help people find you"
    And I fill in "I'm a cool guy in my mind, tell me what you think" for "Description"
    And I check "General Comments"
    And I check "Constructive criticism"
    And I check "Hearing about myself"
    And I check "Anything and Everything"
    And I check "Make my profile public"
    And I click "Submit"
    Then I should see "Bob Thompson"
    And I should see "A short order cook."
    And I should see "I'm a cool guy in my mind, tell me what you think"

  Scenario: See Your public profile Link
    Given the user "bob@example.com" with password "password1" is logged in
    When I go to the homepage
    Then I should see "| Create a profile |"
    When I press "Create a profile"
    Then I should see "Your Profile"
    And I fill in "Bob Thompson" for "Name"
    And I fill in "A short order cook." for "A one-liner to help people find you"
    And I fill in "I'm a cool guy in my mind, tell me what you think" for "Description"
    And I click "Submit"
    Then I should see "| Your public profile |"
    When I go to the homepage
    Then I should see "| Your public profile |"

  Scenario: One profile per user
    Given the user "bob@example.com" with password "password1" is logged in
    When I go to the homepage
    And I press "Create a profile"
    And I fill in "Bob Thompson" for "Name"
    And I fill in "A short order cook." for "A one-liner to help people find you"
    And I fill in "I'm a cool guy in my mind, tell me what you think" for "Description"
    And I click "Submit"
    Then I should not see "| Create a profile |"






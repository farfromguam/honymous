Feature: Manage Actions
  User story here
  something, something
  to make money....

  Scenario: Cannot visit manage unless logged in
    When I go to the Manage Profile page
    Then I should see "You need to sign in or sign up before continuing."

  Scenario: See Manage profiles Link after creating a profile
    Given the user "bob@example.com" with password "password1" is logged in
    When I go to the homepage
    Then I should see "Create a profile"
    And the user makes profile "Joe"
    Then I should see "Manage"
    When I go to the Manage Profile page
    Then I should see "Your profiles"

  Scenario: Manage only shows current_users profiles
    Given the user "bob@example.com" with password "password1" is logged in
    And the user makes profile "Joe"
    And the user makes profile "Bob"
    And the user makes profile "Tom"
    And I click "Logout"
    Given the user "flan@example.com" with password "password2" is logged in
    And the user makes profile "Phil"
    And the user makes profile "Mike"
    And the user makes profile "John"
    When I go to the Manage Profile page
    Then I should see "Your profiles"
    And I should see "Phil"
    And I should see "Mike"
    And I should see "John"
    And I should not see "Joe"
    And I should not see "Bob"
    And I should not see "Tom"
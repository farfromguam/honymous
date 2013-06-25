Feature: Users can comment and vote
  User story here
  something, something
  to make money....

  Scenario: User can comment on profile
    Given the profile "Billy Mays" is open
    When I go to the homepage
    And I fill in "Billy Mays" for "search"
    And I press "Search"
    Then I should see "Billy Mays"
    And I click "Billy Mays"
    Then I should see "Your Comments:"
    And I fill in "Your commercials suck!" for "Your Comments"
    And I press "Submit"
    Then I should see "Your commercials suck!"
@wip
  Scenario: Comment cannot be blank
    Given the profile "Billy Mays" is open
    And I fill in "" for "Your Comments"
    And I press "Submit"
    Then I should see "Comment not saved"

  Scenario: User can see vote buttons
    Given the profile "Billy Mays" is open
    And comment "Good Job" is visible
    Then I should see "Vote Up"
    And I should see "Vote Down"

  Scenario: Vote Up
    Given the profile "Billy Mays" is open
    And comment "Good Job" is visible
    And I press "Vote Up"
    Then I should see "36"

  Scenario: Vote Down
    Given the profile "Billy Mays" is open
    And comment "Good Job" is visible
    And I press "Vote Down"
    Then I should see "-42"

  Scenario: One Vote per IP Address
    Given the profile "Billy Mays" is open
    And comment "Good Job" is visible
    And I press "Vote Up"
    Then I should see "36"
    And I press "Vote Up"
    Then I should see "36"
    And I should see "Vote not saved, You can't vote twice"
    And I should not see "72"
Feature: Users can comment
  User story here
  something, something
  to make money....

  Scenario: User can comment on profile
    Given the profile "Billy Mays" is "public"
    When I go to the homepage
    And I fill in "Billy Mays" for "search"
    And I press "Search"
    Then I should see "Billy Mays"
    And I click "Billy Mays"
    Then I should see "Add your two cents:"
    And I fill in "Your commercials suck!" for "Your Comments"
    And I press "Submit"
    Then I should see "Your commercials suck!"

  Scenario: User can Vote on comment

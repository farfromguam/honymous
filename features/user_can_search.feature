Feature: Users can Search
  User story here
  something, something
  to make money....

  Scenario: User can find public profile
    Given the profile "Billy Mays" is "public"
    When I go to the homepage
    And I fill in "Billy Mays" for "search"
    And I press "Search"
    Then I should see "Billy Mays"
    And I should not see "Error Message: There is nothing here"

  Scenario: User can not find private profile
    Given the profile "Billy Mays" is "private"
    When I go to the homepage
    And I fill in "Billy Mays" for "search"
    And I press "Search"
    Then I should not see "Billy Mays"
    And I should see "Error Message: There is nothing here"
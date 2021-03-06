Feature: Comment on articless
  As a visitor,
  When I read a comment
  I would like to be able to add a comment to that article

  Background:
  Given I perform basic authentication as "robin" with "Mypassword"
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  And the following comment exist for "A breaking news item"
      | body      | name   | email              |
      | Nice read | Snorre | snorre@example.com |
      
  
  Scenario: View existing comment on article
    Given I visit the landing page
    And I click "A breaking news item" link
    Then I should see "Nice read"

  Scenario: Add comment to existing article
    Given I visit the landing page
    When I click "A breaking news item" link
    And I fill in "Name" with "Rudolf"
    And I fill in "Email" with "Rudolf@example.com"
    And I fill in "Body" with "This was a nice comment"
    And I click "Create Comment" button
    Then I should see "Comment was successfully created."
  

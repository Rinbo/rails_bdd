Feature: Comment on articless
  As a visitor,
  When I read a comment
  I would like to be able to add a comment to that article

  Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  And the following comment exist for "A breaking news item"
      | comment   | name   | email              |
      | Nice read | Snorre | snorre@example.com |
      
  
  Scenario: View existing comment on and article
    Given I visit the landing page
    Then I should see "A breaking news item"
    And I should see "Nice Read"
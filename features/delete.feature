Feature: Delete articles and comments
  As a publisher
  When I need to remove an article and comments
  I would like to be able to delete my article

  Background:
  #Given I perform basic authentication as "robin" with "Mypassword"
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
  
  And the following comment exist for "A breaking news item"
      | body      | name   | email              |
      | Nice read | Snorre | snorre@example.com |
  And I visit the landing page

    @javascript
    Scenario: Successfully delete an article
      Given I click "Learn Rails 5" link
      And I click "Delete article" button    
      And I accept popup alert
      Then I should see "Article was successfully deleted."
    
    @javascript
    Scenario: Successfully delete a comment
      Given I click "A breaking news item" link
      And I click "Delete" button    
      And I accept popup alert
      Then I should see "Comment was successfully deleted."
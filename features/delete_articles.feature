Feature: Delete articles
  As a publisher
  When I need to remove an article
  I would like to be able to delete my article

  Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
  Given I visit the landing page
  
  @javascript
  Scenario: Successfully delete an article
    Given I click "Learn Rails 5" link
    And I click "Delete article" button    
    And I accept popup alert
    Then I should see "Article was successfully deleted."
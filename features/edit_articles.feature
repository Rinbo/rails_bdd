Feature: Edit articles
  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
  Given I visit the landing page
  
  Scenario: Successfully update an article
    Given I click "Learn Rails 5" link
    And I click "Edit article" button
    And I fill in "Title" with "Rails 5 rox!"
    And I fill in "Content" with "It sure is awesome"
    And I click "Save Article" button
    Then I should see "Article was successfully updated."
    


Feature: Example feature


  Background:
    Given I go to the "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTest.html" page
    #Given I go to the Link test page   # doest work :todo work out why it doesn not passthe fiole location correctly


Scenario:I can click the link when giving the correct TEXT
  When  I click the link with text "HTML TEST LINK"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct CLASS
  When I click on the link with class "LINK_CLASS"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct ID
  When I click on the link with ID "LINK_ID"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct HREF
  When I click on the link with href "file:///C:/projects/Ruby/Watir%20and%20cucumber/TestHelpers%20Intergrity%20Test/TestPages/LinkTestSuccess.html"
  Then I should see the success link test page

Scenario: The link with TEXT exists
  Then I should see the link with text "HTML TEST LINK"

Scenario: The link with TEXT should NOT exist
  Then I should NOT see the link with text "SHOULD NOT SEE"

Scenario: The link with CLASS exists
  Then I should see the link with class "LINK_CLASS"

Scenario: The link with CLASS should NOT exist
    Then I should NOT see the link with class "INCORRECT_CLASS"
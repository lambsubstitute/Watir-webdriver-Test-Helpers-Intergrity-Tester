@automated
Feature: This feature tests the link methods that are held in the support/link_browser_helper.rb.
#By default all these tests hit link_by_text(), link_by_id(), link_by_class(), and link_by_href()

  Background:
    Given I go to the "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTest.html" page
    #Given I go to the Link test page   # doest work :todo work out why it doesn not passthe fiole location correctly

#CLICKING METHODS TEST
Scenario:I can click the link when giving the correct TEXT - link_by_text_click()
  When  I click the link with text "HTML TEST LINK"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct CLASS - link_by_class_click()
  When I click on the link with class "LINK_CLASS"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct ID - link_by_id_click()
  When I click on the link with ID "LINK_ID"
  Then I should see the success link test page

Scenario:I can click on the link when given the correct HREF - link_by_href_click()
  When I click on the link with href "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTestSuccess.html"
  Then I should see the success link test page


#EXISTS METHODS TEST
Scenario: The link with TEXT exists - link_by_text_exists()
  Then I should see the link with text "HTML TEST LINK"

Scenario: The link with TEXT should NOT exist - link_by_text_exists()
  Then I should NOT see the link with text "SHOULD NOT SEE"

Scenario: The link with CLASS exists - link_by_class_exists()
  Then I should see the link with class "LINK_CLASS"

Scenario: The link with CLASS should NOT exist - link_by_class_exists()
    Then I should NOT see the link with class "INCORRECT_CLASS"

Scenario: The link with ID should exist - link_by_id_exists()
  Then I should see the link with ID "LINK_ID"

Scenario: The link with ID should NOT exist - link_by_id_exists()
  Then I should NOT see the link with ID "INVALID_ID"

Scenario: The link with HREF should exist - link_by_href_exists()
  Then I should see the link with HREF "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTestSuccess.html"

Scenario: The link with HREF should NOT exist - link_by_href_exists()
  Then I should NOT see the link with HREF "INVALID_HREF"


#GET TEXT METHODS TEST
Scenario: The link with class should show the text - link_by_class_get_text()
  Then I should see the link class "LINK_CLASS" display the text "HTML TEST LINK"

Scenario: The link with ID should show the text - link_by_id_get_text()
  Then I should see the link ID "LINK_ID" display the text "HTML TEST LINK"

Scenario: The link with HREF should show the text - link_by_href_get_text()
  Then I should see the link HREF "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTestSuccess.html" display the text "HTML TEST LINK"

Scenario: The link with class should NOT show the text - link_by_class_get_text()
  Then I should NOT see the link class "LINK_CLASS" display the text "INVALID TEXT"

Scenario: The link with ID should NOT show the text link_by_id_get_text()
  Then I should NOT see the link ID "LINK_ID" display the text "INVALID TEXT"

Scenario: The link with HREF should NOT show the text - link_by_href_get_text()
  Then I should NOT see the link HREF "file:///C:/Projects/Ruby/Watir%20and%20cucumber/Watir-webdriver-Test-Helpers-Intergrity-Tester/TestPages/LinkTestSuccess.html" display the text "INVALID TEXT"

Feature: This feature tests the button methods that are held in the browser_helper.rb.

  Background:
    Given I go to the "file:///c:/projects/Ruby/Watir%20and%20cucumber/TestHelpers%20Intergrity%20Test/TestPages/LinkTest.html" page


#CLICKING METHODS TEST
Scenario:I can click the button when giving the correct TEXT - button_by_text_click()
    When  I click the button with text "test_btn_value"
    Then I should see the success link test page

Scenario:I can click the button when given the correct CLASS - link_by_class_click()
    When I click the button with class "test_btn_class"
    Then I should see the success link test page

#clicking a button by its element methods test
Scenario: Click on the button using its class - button_by_class_click()
    When  I click the button with value "test_btn_value"
    Then I should see the success link test page

Scenario: Click on the button using its ID - button_by_id_click()
  When I click the button with ID "BUTTON_ID"
  Then I should see the success link test page

  Scenario: Click on the button using its text - button_by_text_click()

Scenario: Click on the button using its value - button_by_value_click()

Scenario: Click on the button using its name - button_by_name_click()



#Checking a button exists by its element methods test
Scenario: The button with the class exists - button_by_class_exists()

Scenario: The button with the class does NOT exists - button_by_class_exists()

Scenario: The button with the ID exists - button_by_id_exists()

Scenario: The button with the ID does NOT exists - button_by_id_exists()

Scenario: The button with the text exists - button_by_text_exists()

Scenario: The button with the text does NOT exists - button_by_text_exists()

Scenario: The button with the value exists - button_by_value_exists()

Scenario: The button with the value does NOT exists - button_by_value_exists()

Scenario: The button with the name exists - button_by_name_exists()

Scenario: The button with the name does NOT exists - button_by_name_exists()



#Checking button with an element has the correct value methods test
Scenario: The button with the class has the value - button_by_class_get_value()

Scenario: The button with the class does NOT have value - button_by_class_get_value()

Scenario: The button with the ID has the value - button_by_id_get_value()

Scenario: The button with the ID does NOT have value - button_by_id_get_value()

Scenario: The button with the name has the value - button_by_name_get_value()

Scenario: The button with the name does NOT have value - button_by_name_get_value()

Scenario: The button with the text has the value - button_by_text_get_value()

Scenario: The button with the text does NOT have value - button_by_text_get_value()



#Checking button with an element has the correct text methods test
  Scenario: The button with the class has the text - button_by_class_get_text()

  Scenario: The button with the class does NOT have text - button_by_class_get_text()

  Scenario: The button with the ID has the text - button_by_id_get_text()

  Scenario: The button with the ID does NOT have text - button_by_id_get_text()

  Scenario: The button with the name has the text - button_by_name_get_text()

  Scenario: The button with the name does NOT have text - button_by_name_get_text()

  Scenario: The button with the value has the text - button_by_value_get_text()

  Scenario: The button with the value does NOT have text - button_by_value_get_text()


#Checking button with an element has the correct name methods test
  Scenario: The button with the class has the name - button_by_class_get_name()

  Scenario: The button with the class does NOT have name - button_by_class_get_name()

  Scenario: The button with the ID has the name - button_by_id_get_name()

  Scenario: The button with the ID does NOT have name - button_by_id_get_name()

  Scenario: The button with the text has the name - button_by_text_get_name()

  Scenario: The button with the text does NOT have name - button_by_text_get_name()

  Scenario: The button with the value has the name - button_by_value_get_name()

  Scenario: The button with the value does NOT have name - button_by_value_get_name()
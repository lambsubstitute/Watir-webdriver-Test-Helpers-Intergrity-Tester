@automated
Feature: This feature tests the checkbox methods that are held in the support/checkbox_helpers.rb.
#By default all these tests hit chekcbox_by_class(), checkbox_by_id(), checkbox_by_value()

  Background:
    Given I go to the "LinkTest.html" page


  Scenario: This test will find the checkbox by its value and verify its existence to check a positive result
    Then I should see the checkbox with value "valid_cb_value"

  Scenario: This test will find the checkbox by its value and verify its existence to check a negative result
    Then I should not see the checkbox with value "invalid_value"



  Scenario: This test will find the checkbox by its class and verify its existence to check a positive result
    Then I should see the checkbox with class "valid_cb_class"

  Scenario: This test will find the checkbox by its class and verify its existence to check a negative result
    Then I should not see the checkbox with class "invalid_class"



Scenario: This test will find the checkbox by its id and verify its existence to check a positive result
    Then I should see the checkbox with id "valid_cb_id"

Scenario: This test will find the checkbox by its id and verify its existence to check a negative result
    Then I should not see the checkbox with id "invalid_id"


Scenario: this test will find the checkbox by the class and check it, it will then verify that the checkbox is checked
    When I check the checkbox with the class "valid_cb_class"
    Then the checkbox with class "valid_cb_class" is selected

  Scenario: this test will find the checkbox by the class and clear it, it will then verify that the checkbox is not checked
    When I clear the checkbox with the class "valid_cb_class"
    Then the checkbox with class "valid_cb_class" is not selected


  Scenario: this test will find the checkbox by the id and check it, it will then verify that the checkbox is checked
    When I check the checkbox with the id "valid_cb_id"
    Then the checkbox with id "valid_cb_id" is selected

  Scenario: this test will find the checkbox by the id and clear it, it will then verify that the checkbox is not checked
    When I clear the checkbox with the id "valid_cb_id"
    Then the checkbox with id "valid_cb_id" is not selected


  Scenario: this test will find the checkbox by the value and check it, it will then verify that the checkbox is checked
    When I check the checkbox with the value "valid_cb_value"
    Then the checkbox with value "valid_cb_value" is selected

  Scenario: this test will find the checkbox by the id and clear it, it will then verify that the checkbox is not checked
    When I clear the checkbox with the value "valid_cb_value"
    Then the checkbox with value "valid_cb_value" is not selected



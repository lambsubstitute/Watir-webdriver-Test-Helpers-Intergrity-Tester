##GIVEN STEPS
Given /^I go to the "(.*)" page$/ do |page|
  @browser.goto(page)
  #sleep 1
  #puts button_by_id_exists("BUTTON_ID")
end





##WHEN STEPS
When  /^I click the link with text "(.*)"$/ do |link_text|
  link_by_text_click(link_text)
end

When /^I click on the link with class "(.*)"$/ do |link_class|
  link_by_class_click(link_class)
  #or could use link_by_class(link_class).click
  #Link.new.from_class(link_class).click
end

When /^I click on the link with ID "(.*)"$/ do |link_id|
  link_by_id_click(link_id)
  #or could use link_by_id(link_id).click
  #Link.new.from_id(link_id).click
end

When /^I click on the link with href "(.*)"$/ do |link_href|
  link_by_href_click(link_href)
end


When  /^I click the button with class "(.*)"$/ do |button_class|
  #button_by_class_click(button_class)

  @browser.button(:class, button_class).click
end

When  /^I click the button with text "(.*)"$/ do |button_value|
 # button_by_value_click(button_value)

  @browser.button(:text, button_value)
end

When  /^I click the button with value "(.*)"$/ do |button_value|
  button_by_value_click(button_value)
end

When  /^I click the button with ID "(.*)"$/ do |button_id|
  button_by_id_click(button_id)
end

When /^I clear the checkbox with the class "(.*)"$/ do |cb_class|
  checkbox_by_class_clear(cb_class)
end

When /^I clear the checkbox with the id "(.*)"$/ do |cb_id|
  checkbox_by_id_clear(cb_id)
end

When /^I clear the checkbox with the value "(.*)"$/ do |id_value|
  checkbox_by_value_clear(id_value)
end


When /^I check the checkbox with the class "(.*)"$/ do |cb_class|
  checkbox_by_class_set(cb_class)
end

When /^I check the checkbox with the id "(.*)"$/ do |cb_id|
  checkbox_by_id_set(cb_id)
end

When /^I check the checkbox with the value "(.*)"$/ do |id_value|
  checkbox_by_set_clear(id_value)
end





##THEN STEPS

Then /^the checkbox with class "(.*)" is selected$/ do |cb_class|
  assert checkbox_by_class_is_set(cb_class)
end

Then /^the checkbox with class "(.*)" is not selected$/ do |cb_class|
  assert (checkbox_by_class_is_set(cb_class) == false)
end


Then /^the checkbox with id "(.*)" is selected$/ do |cb_id|
  assert checkbox_by_id_is_set(cb_id)
end

Then /^the checkbox with id "(.*)" is not selected$/ do |cb_id|
  assert (checkbox_by_id_is_set(cb_id) == false)
end


Then /^the checkbox with value "(.*)" is selected$/ do |cb_value|
  assert checkbox_by_value_is_set(cb_value)
end

Then /^the checkbox with value "(.*)" is not selected$/ do |cb_value|
  assert (checkbox_by_value_is_set(cb_value) == false)
end

Then /^I should see the checkbox with value "(.*)"$/ do |cb_value|
  puts checkbox_by_value_exists(cb_value)
  assert checkbox_by_value_exists(cb_value)
end

Then /^I should see the checkbox with id "(.*)"$/ do |cb_id|
  assert checkbox_by_id_exists(cb_id)
end

Then /^I should see the checkbox with class "(.*)"$/ do |cb_class|
  assert checkbox_by_class_exists(cb_class)
end

Then /^I should see the link with text "(.*)"$/ do |link_text|
  assert link_by_text_exists(link_text)
end

Then /^I should NOT see the link with text "(.*)"$/ do |link_text|
  assert link_by_text_exists(link_text) == false
end

Then /^I should see the link with class "(.*)"$/ do |link_class|
  assert link_by_class_exists(link_class)
  #assert Link.new.from_class(link_class).exists?
end

Then /^I should NOT see the link with class "(.*)"$/ do |link_class|
  assert link_by_class_exists(link_class) == false
  #assert Link.new.from_class(link_class).exists? == false
end

Then /^I should see the link with ID "(.*)"$/ do |link_id|
  assert link_by_id_exists(link_id)
end

Then /^I should NOT see the link with ID "(.*)"$/ do |link_id|
  assert link_by_id_exists(link_id) == false
end

Then /^I should see the link with HREF "(.*)"$/ do |link_href|
  assert link_by_href_exists(link_href)
end

Then /^I should NOT see the link with HREF "(.*)"$/ do |link_href|
  assert link_by_href_exists(link_href) == false
end

Then /^I should see the link class "(.*)" display the text "(.*)"$/ do |link_class, text|
  link_text = link_by_class_get_text(link_class)
  assert link_text == text
end

Then /^I should NOT see the link class "(.*)" display the text "(.*)"$/ do |link_class, text|
  link_text = link_by_class_get_text(link_class)
  assert((link_text == text)==false)
end

Then /^I should see the link ID "(.*)" display the text "(.*)"$/ do |link_id, text|
  link_text = link_by_id_get_text(link_id)
  assert link_text == text
end

Then /^I should NOT see the link ID "(.*)" display the text "(.*)"$/ do |link_id, text|
  link_text = link_by_id_get_text(link_id)
  assert((link_text == text)==false)
end

Then /^I should see the link HREF "(.*)" display the text "(.*)"$/ do |link_href, text|
  link_text = link_by_href_get_text(link_href)
  assert link_text == text
end

Then /^I should NOT see the link HREF "(.*)" display the text "(.*)"$/ do |link_href, text|
  link_text = link_by_href_get_text(link_href)
  assert((link_text == text)== false)
end
##GIVEN STEPS
Given /^I go to the "(.*)" page$/ do |page|
  @browser.goto(page)
end





##WHEN STEPS
When  /^I click the link with text "(.*)"$/ do |link_text|
  link_by_text_click(link_text)
end

When /^I click on the link with class "(.*)"$/ do |link_class|
  link_by_class_click(link_class)
  #or could use link_by_class(link_class).click
end

When /^I click on the link with ID "(.*)"$/ do |link_id|
  link_by_id_click(link_id)
  #or could use link_by_id(link_id).click
end

When /^I click on the link with href "(.*)"$/ do |link_href|
  link_by_href_click(link_href)
end



##THEN STEPS

Then /^I should see the link with text "(.*)"$/ do |link_text|
  assert link_by_text_exists(link_text)
end

Then /^I should NOT see the link with text "(.*)"$/ do |link_text|
  assert link_by_text_exists(link_text) == false
end

Then /^I should see the link with class "(.*)"$/ do |link_class|
  assert link_by_class_exists(link_class)
end

Then /^I should NOT see the link with class "(.*)"$/ do |link_class|
  assert link_by_class_exists(link_class) == false
end


##GIVEN STEPS
Given /^I go to the Link test page$/ do
  @browser.goto(@Link_test_page)
end



##WHEN STEPS




##THEN STEPS
Then /^I should see the success link test page$/ do
  assert text_exists("SUCCESS PAGE")
end



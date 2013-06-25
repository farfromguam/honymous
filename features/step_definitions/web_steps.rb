When(/^I go to the homepage$/) do
  visit "/"
end

When "I open the page" do
  save_and_open_page
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_named|
  fill_in field_named, with: value
end

Then(/^I check "(.*?)"$/) do |item|
  check(item)
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end

Then(/^Inside of "(.*?)" i should see "(.*?)"$/) do |field, value|
  page.should have_field(field, with: value)
end

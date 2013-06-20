Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create( email: email, password: password)
  refute user.new_record?
end

Given(/^the profile "(.*?)" is "(.*?)"$/) do |name, public_profile|
  if public_profile == "public"
    setting = true
  elsif public_profile == "private"
    setting = false
  end

  profile = Profile.create(
    name: name,
    description: nil,
    criticism: nil,
    general_comments: nil,
    about_myself: nil,
    anything: nil,
    public_profile: setting,
    one_liner: nil,
    user_id: nil,
  )
end

Given(/^the user "(.*?)" with password "(.*?)" is logged in$/) do |email, password|
  user = User.create( email: email, password: password)
  visit new_user_session_path
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
  page.should have_content("Signed in successfully.")
end

Given(/^the user has a profile$/) do
  Profile.exists?( :user_id == self.id )
end

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
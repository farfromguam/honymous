Given(/^the profile "(.*?)" is "(.*?)"$/) do |name, public_profile|
  if public_profile == "public"
    setting = true
  elsif public_profile == "private"
    setting = false
  end

  profile = Profile.new(
    name: name,
    one_liner: "This is the one liner",
    description: "This is the description",
    public_profile: setting,
  )
  profile.save
end

Given(/^the profile "(.*?)" is open$/) do |name|
  user = User.create( email: "email@example.com", password: "password1")
  visit new_user_session_path
  fill_in "Email", with: "email@example.com"
  fill_in "Password", with: "password1"
  click_button "Submit"
  page.should have_content("Signed in successfully.")

  visit new_profile_path
  fill_in "Name", with: name
  fill_in "one-liner", with: "This is my one liner"
  fill_in "feedback on?", with: "generic feedback please :)"
  check "Make my profile public"
  click_button "Submit"
end

When(/^I go to the new profile page$/) do
  visit new_profile_path
end

Given(/^the user makes profile "(.*?)"$/) do |name|
  visit new_profile_path
  fill_in "Name", with: name
  fill_in "one-liner", with: "This is my one liner"
  fill_in "feedback on?", with: "generic feedback please :)"
  check "Make my profile public"
  click_button "Submit"
end

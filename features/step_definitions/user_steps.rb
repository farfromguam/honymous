Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create( email: email, password: password)
  refute user.new_record?
end

Given(/^the user "(.*?)" with password "(.*?)" is logged in$/) do |email, password|
  user = User.create( email: email, password: password)
  visit new_user_session_path
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
  page.should have_content("Signed in successfully.")
end
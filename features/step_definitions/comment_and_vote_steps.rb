Given(/^comment "(.*?)" is visible$/) do |comment|
  fill_in "Your Comments", with: comment
  click_button "Submit"
  page.should have_content(comment)
end
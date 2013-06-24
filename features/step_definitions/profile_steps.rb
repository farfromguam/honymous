Given(/^the profile "(.*?)" is "(.*?)"$/) do |name, public_profile|
  if public_profile == "public"
    setting = true
  elsif public_profile == "private"
    setting = false
  end

  profile = Profile.create(
    name: name,
    one_liner: "This is the one liner",
    description: "This is the description",
    public_profile: setting,
    user_id: 1
  )

end

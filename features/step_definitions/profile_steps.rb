Given(/^the profile "(.*?)" is "(.*?)"$/) do |name, public_profile|
  if public_profile == "public"
    setting = true
  elsif public_profile == "private"
    setting = false
  end

  profile = Profile.create( name: name, public_profile: setting )
end

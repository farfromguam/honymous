module ApplicationHelper

  def avatar_url(user)
    default_url = "#{root_url}images/guest.png"
    gravatar_id = Digest::MD5.hexdigest(user.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=180&d=mm"
  end

end

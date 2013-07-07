module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  # a4febccb798fc31f34aed9efbf5a75cf - aj.williams7@yahoo.com
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.strip.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
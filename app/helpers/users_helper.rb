module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  # a4febccb798fc31f34aed9efbf5a75cf - aj.williams7@yahoo.com
   def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
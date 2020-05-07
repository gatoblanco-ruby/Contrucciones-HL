module OsosHelper
    def gravatar_for(oso)
        gravatar_id = Digest::MD5::hexdigest(oso.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: oso.name, class: "gravatar")
    end
    
end

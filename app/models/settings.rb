class Settings

  def self.redirect_url
    ENV['FISHING_CAT_REDIRECT_URL']
  end

  def self.admin_realm
    ENV['FISHING_CAT_ADMIN_REALM']
  end

  def self.admin_username
    ENV['FISHING_CAT_ADMIN_USERNAME']
  end

  def self.admin_password
    ENV['FISHING_CAT_ADMIN_PASSWORD']
  end

end

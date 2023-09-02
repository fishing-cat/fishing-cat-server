class Settings
  def self.admin_realm
    ENV.fetch("FISHING_CAT_ADMIN_REALM", nil)
  end

  def self.admin_username
    ENV.fetch("FISHING_CAT_ADMIN_USERNAME", nil)
  end

  def self.admin_password
    ENV.fetch("FISHING_CAT_ADMIN_PASSWORD", nil)
  end
end

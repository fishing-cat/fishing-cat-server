class Campaign < ApplicationRecord
  validates :cid, presence: true, uniqueness: true

  def self.default_template(name)
    return nil if name !~ /^[a-z]+$/

    return Rails.root.join("app", "views", "fishing").children.select{ |path|
      path.basename == Pathname("#{name}.html.erb")
    }.first&.read&.html_safe
  end

  after_initialize :set_default, if: :new_record?

  def to_param
    cid
  end

  private

  def set_default
    self.cid ||= Hashids.new(salt, 0, "abcdefghijklmnopqrstuvwxyz").encode(Time.now.to_i)
  end

  def salt
    FishingCat::Server::Application.secrets.secret_key_base
  end
end

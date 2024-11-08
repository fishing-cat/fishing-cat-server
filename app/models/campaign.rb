class Campaign < ApplicationRecord
  validates :cid, presence: true, uniqueness: true

  def self.default_template(name)
    return nil if name !~ /^[a-z]+$/

    return Rails.root.join("app", "views", "fishing").children.select { |path|
      path.basename == Pathname("#{name}.html.erb")
    }.first&.read&.html_safe
  end

  after_initialize :set_default, if: :new_record?

  def to_param
    cid
  end

  private

    def set_default
      self.cid ||= Sqids.new(
        blocklist: Set.new(%w[example]),
        min_length: 0,
        alphabet: "abcdefghijklmnopqrstuvwxyz"
      ).encode([ Time.now.to_i ])
    end

    def salt
      FishingCat::Server::Application.secret_key_base
    end
end

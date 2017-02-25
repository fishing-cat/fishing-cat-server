class Campaign < ApplicationRecord

  validates :cid, presence:true, uniqueness:true

  after_initialize :set_default, if: :new_record?

  def to_param
    cid
  end

  private

    def set_default
      self.cid ||= Hashids.new(salt, 0, 'abcdefghijklmnopqrstuvwxyz').encode(Time.now.to_i)
    end

    def salt
      FishingCat::Server::Application.secrets.secret_key_base
    end

end

class Event < ApplicationRecord

  include SearchCop

  search_scope :search do
    attributes :id, :cid, :action
  end

  def self.log(params, request)
    event = {
      cid: params[:cid],
      pid: params[:pid],
      action: params[:action],
    }
    Event.create(event)
  end

end

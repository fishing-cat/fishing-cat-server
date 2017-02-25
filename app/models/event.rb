class Event < ApplicationRecord

  include SearchCop

  search_scope :search do
    attributes :id, :cid, :pid, :action, :update_at, :created_at
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

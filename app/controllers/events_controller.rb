class EventsController < ApplicationController

  layout false
  before_action :event_log

  def new
  end

  def create
    redirect_to Settings.redirect_url
  end

  private

    def event_log
      Event.log(params, request)
    end

end

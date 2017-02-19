class Fishing::ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  layout false
  before_action :event_log

  private

    def event_log
      Event.log(params, request)
    end

end

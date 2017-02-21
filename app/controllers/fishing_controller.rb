class FishingController < ActionController::Base

  protect_from_forgery with: :exception
  layout false
  before_action :event_log

  def opened_email
    data = Rails.root.join('app', 'assets', 'images', 'track.png').read
    send_data data, type:Mime::Type.lookup_by_extension(:png), disposition:'inline'
  end

  def clicked_link
    render template:'fishing/show.html.erb'
  end

  def submitted_data
    # TODO with params
    redirect_to(Settings.redirect_url || result_path)
  end

  def viewed_result
    render template:'fishing/result.html.erb'
  end

  private

    def event_log
      Event.log(params, request)
    end

end

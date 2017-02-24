class FishingController < ActionController::Base

  protect_from_forgery with: :exception
  layout false
  before_action :event_log

  def opened_email
    data = Rails.root.join('app', 'assets', 'images', 'track.png').read
    send_data data, type:Mime::Type.lookup_by_extension(:png), disposition:'inline'
  end

  def clicked_link
    @campaign = Campaign.find_by(cid:params[:cid])
    if @campaign
      render inline:@campaign.form_template
    else
      render template:'fishing/show.html.erb'
    end
  end

  def submitted_data
    redirect_to(fishing_result_path(cid:params[:cid], pid:params[:pid]))
  end

  def viewed_result
    @campaign = Campaign.find_by(cid:params[:cid])
    if @campaign
      render inline:@campaign.result_template
    else
      render template:'fishing/result.html.erb'
    end
  end

  private

    def event_log
      Event.log(params, request)
    end

end

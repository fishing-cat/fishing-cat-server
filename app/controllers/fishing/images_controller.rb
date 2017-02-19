class Fishing::ImagesController < Fishing::ApplicationController

  def show
    data = Rails.root.join('app', 'assets', 'images', 'track.png').read
    send_data data, type:Mime::Type.lookup_by_extension(params[:format]), disposition:'inline'
  end

end

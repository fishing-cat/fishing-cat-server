class Fishing::EventsController < Fishing::ApplicationController

  def new
  end

  def create
    redirect_to Settings.redirect_url
  end

end

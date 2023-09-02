class Admin::Campaigns::TemplatesController < Admin::ApplicationController
  def show
    template = Campaign.default_template(params[:name])
    if template
      render html:template
    else
      render nothing:true, status:404
    end
  end
end

class Admin::CampaignsController < Admin::ApplicationController
  before_action :set_campaign, only: [ :show, :edit, :update, :destroy ]

  def index
    @campaigns = Campaign.all.order(updated_at: :desc)
  end

  def show
  end

  def new
    @campaign = Campaign.new
  end

  def edit
  end

  def create
    @campaign = Campaign.new(campaign_params)
    case params[:button]
    when "load_default_form_template"
      @campaign.form_template = Campaign.default_template("form")
      render :new, status: :unprocessable_entity
      return
    when "load_default_result_template"
      @campaign.result_template = Campaign.default_template("result")
      render :new, status: :unprocessable_entity
    else
      if @campaign.save
        flash[:notice] = "Campaign was successfully created."
        redirect_to [ :admin, @campaign ]
      else
        render :new, status: :unprocessable_entity
      end
      return
    end
  end

  def update
    @campaign.assign_attributes(campaign_params)
    case params[:button]
    when "load_default_form_template"
      @campaign.form_template = Campaign.default_template("form")
      render :edit, status: :unprocessable_entity
      return
    when "load_default_result_template"
      @campaign.result_template = Campaign.default_template("result")
      render :edit, status: :unprocessable_entity
      return
    else
      if @campaign.save
        flash[:notice] = "Campaign was successfully updated."
        redirect_to [ :admin, @campaign ]
      else
        render :edit, status: :unprocessable_entity
      end
      return
    end
  end

  def destroy
    @campaign.destroy
    flash[:notice] = "Campaign was successfully destroyed."
    redirect_to admin_campaigns_url, status: :see_other
  end

  private

    def set_campaign
      @campaign = Campaign.find_by(cid: params[:cid])
    end

    def campaign_params
      params.require(:campaign).permit(:cid, :note, :form_template, :result_template)
    end
end

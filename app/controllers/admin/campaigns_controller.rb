class Admin::CampaignsController < Admin::ApplicationController

  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def index
    @campaigns = Campaign.all
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
    if @campaign.save
      redirect_to [:admin, @campaign], notice: 'Campaign was successfully created.'
    else
      render :new
    end
  end

  def update
    if @campaign.update(campaign_params)
      redirect_to [:admin, @campaign], notice: 'Campaign was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @campaign.destroy
    redirect_to admin_campaigns_url, notice: 'Campaign was successfully destroyed.'
  end

  private

    def set_campaign
      @campaign = Campaign.find_by(cid:params[:cid])
    end

    def campaign_params
      params.require(:campaign).permit(:cid, :form_template, :result_template)
    end

end

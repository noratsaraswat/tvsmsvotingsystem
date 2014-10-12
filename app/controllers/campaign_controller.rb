class CampaignController < ApplicationController
  def index
  	@campaign = Campaign.group("campaign")
  end

  def candidate_lists
  	@campaign = params[:campaign]
  	@candidates = Campaign.where(:campaign => @campaign).group("choice")
  end
end

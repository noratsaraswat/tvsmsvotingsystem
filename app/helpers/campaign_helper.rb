module CampaignHelper
	def score(campaign,choice)
		scores =  Campaign.where(:campaign=>campaign , :choice=>choice,:validity=>"during")
		return scores.count
	end 
	def number_of_message(campaign,choice)
		scores =  Campaign.where(:campaign=>campaign , :choice=>choice,:validity=>'pre' || 'post')
		return scores.count
	end	
end

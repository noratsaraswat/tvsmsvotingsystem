require 'mysql2'
require 'csv'
require 'rubygems'  
require 'active_record' 
ActiveRecord::Base.establish_connection(  
:adapter => "mysql2",  
:host => "localhost", 
:username => "root" ,
:password => "",
:database => "votingsystem_development"  
) 
class Campaign < ActiveRecord::Base
end
text=File.open('votes.txt').read
text.each_line do |vote|
	# Making line in same form with gsub because VOTE is diffrenct from others line element 
	begin
		new_line = vote.gsub("VOTE ","VOTE:").strip
		#making hash for each line to get every values

		 hash_line = Hash[new_line.scan(/(\w+):(\w+)/).map { |(keys, values)| [keys, values] }]
		if hash_line
			# checking all values puts same or not in line 
			if hash_line.keys ==  ['VOTE','Campaign','Validity','Choice','CONN','MSISDN','GUID','Shortcode']
				@campaign = Campaign.new

				puts @campaign.vote = 	hash_line['VOTE']
			    puts @campaign.campaign = 	hash_line['Campaign']
			    puts @campaign.validity = 	hash_line['Validity']
			    puts @campaign.choice = 	hash_line['Choice']
			    puts @campaign.conn = 	hash_line['CONN']
			    puts @campaign.msisdn = 	hash_line['MSISDN']
			    puts @campaign.guid = 	hash_line['GUID']
			    puts @campaign.shortcode = 	hash_line['Shortcode']
			    @campaign.save
		   end
		end
    rescue 

    end
	
end
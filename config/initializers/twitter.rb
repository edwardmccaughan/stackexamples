module TwitterConfig
	def twitter_client
		Twitter::REST::Client.new do |config|
		  config.consumer_key    = "BnigFA98IcTCsMex99YUA"
		  config.consumer_secret = "d911m2iqTbCc0ZjsPWElwHudS1OGC3ZAxtmdY0mVtwE"
		end
	end

	
end
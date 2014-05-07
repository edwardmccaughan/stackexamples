module TwitterHelper
	def get_tweet_for_user(username)
		TwitterConfig::twitter_client.user_timeline(username).first.text
	end

	def get_profile_picture_for_user(username)
		TwitterConfig::twitter_client.user(username).picture.to_s
	end
end
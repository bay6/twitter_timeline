require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key        = "HdvvOP7MKzMsQErS6CurXA"
  config.consumer_secret     = "VPRYvu82UA26WWL5t6jo2KyKjw2TZ1SpJENzeiE"
  config.oauth_token        = "1863636288-Ecsxgw5zncRVTuLoPRLDdx5ApPcuSGrcoBxNnHP"
  config.oauth_token_secret = "maQDDGGyZ0xaXlOx2liLmzAag2KqUWqwrdQq3imsDuQ"
  config.auth_method        = :oauth
end

# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
TweetStream::Client.new.sample do |status|
  # The status object is a special Hash with
  # method access to its keys.
  puts "#{status.text}"
end
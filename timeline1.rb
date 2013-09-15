require 'debugger'
require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "HdvvOP7MKzMsQErS6CurXA"
  config.consumer_secret     = "VPRYvu82UA26WWL5t6jo2KyKjw2TZ1SpJENzeiE"
  config.access_token        = "1863636288-Ecsxgw5zncRVTuLoPRLDdx5ApPcuSGrcoBxNnHP"
  config.access_token_secret = "maQDDGGyZ0xaXlOx2liLmzAag2KqUWqwrdQq3imsDuQ"
end

client.user do |tweet|
  debugger
  puts tweet.text
end
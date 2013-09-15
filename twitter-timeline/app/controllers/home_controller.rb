class HomeController < ApplicationController
  def index
    @tweets = []
    TweetStream::Client.new.sample do |status|
      # The status object is a special Hash with
      # method access to its keys.
      #puts "#{status.text}"
      @tweet = Tweet.new(
        username: status.user.name,
        screen_name: status.user.screen_name,
        profile_image_url: status.user.profile_image_url,
        content: status.text,
        happened_at: status.created_at,
        source: status.source
      )
      @tweets < @tweet
    end
  end
end

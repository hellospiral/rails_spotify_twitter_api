class Testimony < ApplicationRecord
  def self.pull_tweets
    $client.favorites('hellospiral', since_id: maximum(:tweet_id)).each do |tweet|
      unless exists?(tweet_id: tweet.id)
        create!(
          tweet_id: tweet.id,
          content: tweet.text,
          screen_name: tweet.user.screen_name,
        )
      end
    end
  end

  def testimony_params
    params.require(:testimony).permit(:tweet_id, :content, :screen_name)
  end

end

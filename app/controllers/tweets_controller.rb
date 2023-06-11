class TweetsController < ApplicationController
def index
@tweets = Tweet.all.order(created_at: :desc)
end
def new
@tweet = Tweet.new
end
def create
@tweet = current_user.tweets.build(tweet_params)
if @tweet.save
redirect_to tweets_path, notice: "Tweet created successfully!"
else
render :new
end
end
private
def tweet_params
params.require(:tweet).permit(:content)
end
end
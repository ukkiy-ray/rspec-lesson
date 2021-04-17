class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def index
    @tweets = Tweet.includes(:user).order(created_at: :desc)
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.valid?
      @tweet.save
      return redirect_to tweets_path
    else
      render "index"
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if current_user.id == @tweet.user_id
      @tweet.destroy
      return redirect_to tweets_path
    else
      render "index"
    end
  end

  private

  def tweet_params
    params.permit(:content).merge(user_id: current_user.id)
  end
end

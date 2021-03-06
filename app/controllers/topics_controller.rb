class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create!(topic_params)
    redirect_to "/topics/"
  end

  private
    def topic_params
      params.require(:topic).permit(:name, :photo_url, :description)
    end
end

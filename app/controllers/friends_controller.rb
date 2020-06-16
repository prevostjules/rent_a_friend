class FriendsController < ApplicationController

  def index
    @friends = Friend.all
  end

  def show
    @friend = Friends.find(params[:id])
  end

end

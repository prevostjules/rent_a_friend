class FriendsController < ApplicationController

  def index
    @friends = Friend.all
  end

  def show

  end

end

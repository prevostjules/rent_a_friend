class PagesController < ApplicationController
  def home
    @cities = City.all
  end
end

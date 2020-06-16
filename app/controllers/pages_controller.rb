class PagesController < ApplicationController


  def home
    @cities = City.all
    # if params[:city]
    #   @friends = Friend.search(params[:city])
    # else
    #   @friends = Friend.all
    # end
  end
end

# var = toutes les villes enregistres

# un form dans la home avevc menu deroulant sur ville preenregistre

# f.association

class PagesController < ApplicationController
  def home
    @cities = City.all
  end
end

# var = toutes les villes enregistres

# un form dans la home avevc menu deroulant sur ville preenregistre

# f.association

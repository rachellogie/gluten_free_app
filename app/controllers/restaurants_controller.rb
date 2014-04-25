class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new

  end

  def create
    Restaurant.create(name: params[:name], link: params[:link])


    redirect_to '/restaurants'
  end

end
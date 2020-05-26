class RestaurantsController < ApplicationController

    def index
        @user = current_user
        # @restaurants = Restaurant.all
    end

    def show
        @user = User.find(params[:id])
        @restaurant = Restaurant.find(params[:id])
    end


end

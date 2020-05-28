class RestaurantsController < ApplicationController

    
    def new
        @restaurant = Restaurant.new
    end

    def def create
        @restaurant = Restaurant.create(restaurant_params)
        
    end
    
    def index
        @user = current_user
        @restaurants = Restaurant.all
    end

    def show
        # @user = User.find(params[:id])
        @restaurant = Restaurant.find(params[:id])
        @locations = Location.all
        @reviews = Review.all
    end


    private 

    def restaurant_params
        params.require(:restaurant).permit(:name, :city, :img_url)
    end


end

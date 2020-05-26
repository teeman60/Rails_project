class RestaurantsController < ApplicationController

    def index
        @user = current_user
        # @restaurants = Restaurant.all
    end


end

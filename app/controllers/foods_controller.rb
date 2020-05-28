class FoodsController < ApplicationController
    before_action :current_food, only: [:show]

    def index
        @foods = Food.all
    end

    def show
    end

    private

    def current_food
        @food = Food.find(params[:id])
    end    
end

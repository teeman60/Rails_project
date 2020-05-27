class FoodsController < ApplicationController
    before_action :current_food, only: [:edit, :update, :show, :destory]

    def index
        @foods = Food.all
    end

    def show
    end

    def new
        @food = Food.new
    end

    def create
       
        @food = Food.new(food_params)
        if @food.valid?
            @food.save
          redirect_to @food
        else
          flash[:errors] = @food.errors.full_messages
          redirect_to new_food_path
        end
    end
    
    def edit
    end

    def update
        if @food.update(food_params)
          redirect_to @food
        else
            flash[:errors] = @food.errors.full_messages
            redirect_to edit_food_path(@food)
        end
    end
    
    def destroy
        @food.destroy
        redirect_to foods_url
    end

    
    private

    def current_food
        @food = Food.find(params[:id])
    end

    def food_params
        params.require(:food).permit(:name, :food_info, :image_url, :request_id)
    end
    
end

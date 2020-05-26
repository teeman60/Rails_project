class ReviewsController < ApplicationController
    before_action :current_review, only: [:show, :edit, :update, :destory]


    def index
        @reviews = Review.all
    end
    
    def new
        @review = Review.new
        @users = User.all
        @restautants = Restaurant.all 
        @locations = Location.all
    end

    def create
        @review = Review.new(review_params)
        if @review.valid?
            @review.save
            redirect_to @review
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end
    
    def show
    end

    private

    def review_params
        params.require(:review).permit(:date, :rating, :comment, :user_id, :restaurant_id)
    end
    
    def current_review
        @review = Review.find(params[:id])
    end

end

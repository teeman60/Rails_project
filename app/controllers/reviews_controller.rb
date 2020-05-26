class ReviewsController < ApplicationController
    before_action :current_view, only: [:show, :edit, :update, :destory]

    def new
        @review = Review.new
        @restautants = Restaurant.all 
        @locations = Location.all
    end

    def create
        @review = Review.new(review_params)
        if @review.save
          flash[:success] = "Object successfully created"
          redirect_to @review
        else
          flash[:error] = "Something went wrong"
          redirect_to new_review_path
        end
    end
    
    def show
    end

    private

    def review_params
        params.require(:review).permit(:date, :rating, :comment, :user_id, :request_id)
    end
    
    def current_review
        @review = Review.find(params[:id])
    end

end

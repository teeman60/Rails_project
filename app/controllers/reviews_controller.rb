class ReviewsController < ApplicationController
    # skip_before_action :authenticated, only: [:new, :create]
    before_action :current_review, only: [:show, :edit, :update, :destory]
    before_action :current_user, only: [:create]


    def index
        @reviews = Review.all
    end
    
    def new
        @review = Review.new
        @user = User.find(session[:user_id])
        @restautants = Restaurant.all 
        @locations = Location.all
    end

    def create
        @review = Review.new(review_params.merge(user_id: @user.id))
        # byebug
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

    def current_review
        @review = Review.find(params[:id])
    end
   

    private

    def review_params
        params.require(:review).permit(:date, :rating, :comment, :user_id, :restaurant_id)
    end
       
end

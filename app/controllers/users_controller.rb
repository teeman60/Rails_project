class UsersController < ApplicationController

    skip_before_action :authenticated, only: [:new, :create, :edit, :update]

    def new
        @user = User.new
        @restaurants = Restaurant.all
        @locations = Location.all
    end

    def create
        # byebug
        user = User.new(user_params)
        
        if user.valid?
            user.save
            session[:user_id] = user.id
            redirect_to user            
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end              
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_post_path
        end
    end

    def show
        @user = current_user
    end

    # def current_user
    #     @user = User.find(session[:user_id])
    # end

    private

    def user_params
        params.require(:user).permit(:name, :user_name, :password, :age, :password_confirmation, :restaurant_id)
    end
end

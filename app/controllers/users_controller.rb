class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else
            redirect_to new_user_path
        end
        # return redirect_to controller: 'users', action: 'new' unless @user.save
        # session[:user_id] = @user.id
        # redirect_to controller: 'restaurant', action: 'index'        
    end

    def show
        @user = User.find(params[:id])
    end

    def edit

    end

    def update

    end

    # def current_user
    #     @user = User.find(params[:id])
    # end

    private

    def user_params
        params.require(:user).permit(:name, :user_name, :password, :password_confirmation)
    end
end

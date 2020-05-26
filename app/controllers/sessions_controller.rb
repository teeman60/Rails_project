class SessionsController < ApplicationController

    skip_before_action :authenticated, only: [:new, :create]
    
    def new
    end

    def create
        # byebug
    user = User.find_by(user_name: params[:user_name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user
        else
            redirect_to '/login'
        end
    # user = user.try(:authenticate, params[:user][:password])
    # return redirect_to(controller: 'sessions', action: 'new') unless user
    
    
    # @user = user 
    # redirect_to controller: 'restaurant', action: 'index'
    end

    def destroy
        session.delete :user_id

        redirect_to controller: 'sessions', action: 'new'
    end

end

class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :authenticated


      def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
      end
      
      def logged_in?
        current_user.id != nil
      end
      
      def authenticated
        return redirect_to '/login' unless logged_in?
      end


    # def authenticated
    #     current_user = nil
    #     if session[:user_id]
    #         current_user = User.find(session[:user_id])
    #     end

    #     redirect_to '/login' unless current_user
    # end

end

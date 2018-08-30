class ApplicationController < ActionController::Base
    
    helper_method :require_signin!
    
    helper_method :current_user
    
    private
    
    def require_signin!
        if current_user.nil?
        flash[:error] = "Please sign in..."
        redirect_to login_path
        end
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
end 

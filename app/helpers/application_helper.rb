module ApplicationHelper
    def logged_in?
        !!session[:user_id]
    end

    def current_user
        if logged_in?
            @current_user ||= User.find_by(session[:user_id])
        end
    end
end
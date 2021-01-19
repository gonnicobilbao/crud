class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by_email(params[:session][:email])
        if user && user.authenticate(params[:session][:password])
            # Save the user ID in the session so it can be used in
            # subsequent requests
            session[:current_user_id] = user.id
            end
            redirect_to root_url    
    end

    def destroy
        session[:current_user_id] = nil
        redirect_to root_url
    end


end

class SessionsController < ApplicationController
    def new
        @user = UserX.new
    end

    def create
        user = UserX.find_by(username: params[:username])
        
        if  user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to giftcard_path, notice: "Logged in successfully"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged Out"
    end
end

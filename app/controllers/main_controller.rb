class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = UserX.find_by(id: session[:user_id])
        end
    end
end

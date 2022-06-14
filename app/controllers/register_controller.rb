class RegisterController < ApplicationController
    def new
    @user = UserX.new
    end

    def create
        @user = UserX.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to giftcard_path, notice: "Succesfully created account"
        else
            render :new
        end
    end

    private

        def user_params
            params.require(:user_x).permit(:username, :email, :password, :password_confirmation)
        end

end
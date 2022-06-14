class AdminpageController < ApplicationController
    def showalltable
        if session[:user_id] && Current.user.role == true
            @user = UserX.find_by(id: session[:user_id])
        end
        @giftcoupon = Giftcoupon.all
    end

    def edit
        @giftcoupon = Giftcoupon.find_by(id: params[:id])
    end

    def update
        @giftcoupon = Giftcoupon.find_by(id: params[:id])
        @giftcoupon.update(status: params[:giftcoupon][:status])
        redirect_to admin_path
    end
end
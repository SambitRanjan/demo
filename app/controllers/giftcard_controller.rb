class GiftcardController < ApplicationController
    def neworder
        @giftcoupon = Giftcoupon.new(order_date: Date.current)
    end

    def create
        @giftcoupon = Giftcoupon.new(order_params)
        @giftcoupon.user_x_id = session[:user_id]
        @temp_date = DateTime.now.strftime "%d/%m/%y"
        @giftcoupon.order_date = @temp_date
        @giftcoupon.status = "OUT FOR DELIVERY"
        if @giftcoupon.save
            redirect_to order_history_path
        else
            render :neworder
        end
    end

    def order 
        if session[:user_id]
            @user = UserX.find_by(id: session[:user_id])
        end
    end

    def orderhistory
        @giftcoupon = Giftcoupon.all
    end

    def update
        @giftcoupon = Giftcoupon.find_by(id: params[:id])
        @giftcoupon.update(status: params[:giftcoupon][:status])
        redirect_to admin_path
    end

    private

        def order_params
            params.require(:giftcoupon).permit(:first_name, :last_name, :gift_card_value, :total_amount, :mobile_no, :address)
        end
end
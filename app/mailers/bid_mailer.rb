class BidMailer < ApplicationMailer
    default from: "xyics160@gmail.com"
    
    def send_bid_email(id, bid)
        @user = User.find(id)
        @bid = bid
        mail to: @user.email, subject: "有新的标书！"
    end
end

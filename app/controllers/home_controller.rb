class HomeController < ApplicationController
    def top
    end    

    def newmail
    end

    def mail
        @user= User.new(name:params[:name],mail:params[:email])
        @user.save
        SampleMailer.send_when_admin_reply(@user).deliver
        redirect_to("/")
    end
end

class SampleMailer < ApplicationMailer
    def send_when_admin_reply(user)#メソッドに対して引数を設定
        @user = user
        mail to: user.mail, subject:'MOTIHOMES お問い合わせありがとうございます'
    end
end

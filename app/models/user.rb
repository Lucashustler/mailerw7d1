class User < ApplicationRecord
    after_create :welcome_send
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end
end

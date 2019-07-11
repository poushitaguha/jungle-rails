class UserMailer < ApplicationMailer

    default from: 'no-reply@jungle.com'

    def confirmation_mail(user, order)
        @order = order
        @user = user
        mail(to: user.email, subject: "Order Summary for Order #{order.id}")
    end

    def get_product_info product_id
        Product.find_by(id: product_id)
    end    
    helper_method :get_product_info 

end

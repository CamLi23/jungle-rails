class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to (the) Jungle')
  end

  def order_email(order)
    @order = order
    @url   = "http://localhost:3000/orders/#{@order.id}"
    mail(to:@order.email, subject: "Your order #: #{order.id} has been placed!")
  end
end

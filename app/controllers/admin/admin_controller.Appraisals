class Admin::AdminController < ApplicationController
  def current_user
     @current_user ||= 'jungle' if ENV[ADMIN_USERNAME] = session[:user_id]
  end
  helper_method :current_user

  def authorize_admin
    redirect_to '/login' unless current_user
  end

end
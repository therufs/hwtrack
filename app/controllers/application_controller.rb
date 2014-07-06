class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def signed_in_user
    unless signed_in?
      save_location
      redirect_to signin_url, notice: "You must sign in to do that."
    end
  end

  def is_admin?
    redirect_to(signin_path) unless current_user && current_user.admin?
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  ## doesn't work :/  try User.any?
  def no_users_warning
    if !@users.any?
      "confirm: 'There are no users, so your assignment will not be assigned to anyone.  Proceed?'"
    end
  end


end

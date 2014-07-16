class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include SessionsHelper

  def signed_in_user
    respond_to do |format|
      format.html do
        unless signed_in?
          save_location ## don't actually do anything with this ...
          redirect_to signin_url, notice: "You must sign in to do that."
        end
      end
      format.json { render nothing: true, status: forbidden unless signed_in? }
      format.js { render nothing: true, status: forbidden unless signed_in? }
    end
  end

end

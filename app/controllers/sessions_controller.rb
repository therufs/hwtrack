class SessionsController < ApplicationController
  def new
  end

  def create ## I feel unsure whether the stuff in 8.10 needs followed
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = "Sorry, something went wrong. Try again?"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end

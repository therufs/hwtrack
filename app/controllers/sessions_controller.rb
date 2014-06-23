class SessionsController < ApplicationController
  def new
  end

  def create ## I feel unsure whether the stuff in 8.10 needs followed
    render 'new'
  end

  def destroy
  end
end

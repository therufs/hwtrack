class WelcomeController < ApplicationController

def index
  remember_token = User.digest(cookies[:remember_token])
  @user = User.find_by(remember_token: remember_token)
end

end

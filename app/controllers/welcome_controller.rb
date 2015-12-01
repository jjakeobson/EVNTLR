class WelcomeController < ApplicationController
     layout "welcome"
  def index
    @users = User.all

  end

  def wyncode
  end
end

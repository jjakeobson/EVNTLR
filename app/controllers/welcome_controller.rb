class WelcomeController < ApplicationController
     layout "welcome"
  def index
    @users = User.all

  end

  def test
  end
end

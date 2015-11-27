class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  # layout :homescreen
  # private
  # def homescreen
  #   if current_user.nil?
  #     "welcome"
  #   else
  #     "application"
  #   end
  # end
end

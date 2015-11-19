module SessionsHelper
  #logs in given user
  def log_in(user)
    session[:user_id] = user.id
  end

  #returns currently logged in user (if so)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #true if logged in, false if not
  def logged_in?
    !current_user.nil?
  end

  #logs out current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end

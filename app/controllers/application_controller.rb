class ApplicationController < ActionController::Base

# make current_user available to 'views'
helper_method :current_user, :is_logged_in?

# run this on every single page (i.e. not only are we making this available to views, but every single page on our site as well!)
before_action :current_user

def current_user

  if is_logged_in?
    @current_user = User.find(session[:user_id])
  else
    @current_user = nil
  end

  # we must include this line to 'return' back to our user, otherwise it'll be blank with only variables set above
    @current_user
  end

  def is_logged_in?
    session[:user_id].present?
  end
end

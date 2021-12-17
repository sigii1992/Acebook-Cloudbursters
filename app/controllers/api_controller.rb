class ApiController < ActionController::API
  before_action :set_current_user

  helper_method :set_current_user
  helper_method :logged_in?

  def set_current_user
    if session[:user_id]
    end
  end

end

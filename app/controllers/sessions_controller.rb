class SessionsController < ApplicationController
  # potential to change method name to 'delete' vvv
  def destroy
    session[:user_id] = nil
    redirect_to root_path, :flash => { :notice => "Logged out" }
  end
end
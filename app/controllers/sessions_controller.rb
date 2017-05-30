class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].present?
      redirect_to secrets_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end
end

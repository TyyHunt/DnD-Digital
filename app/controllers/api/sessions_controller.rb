class Api::SessionsController < ApplicationController
  
  def create
    @user = User
            .find_by(email: params["user"]["email"])
            .try(:authenticate, params["user"]["password"])
    if @user
      render json: {
        user: @user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    @current_user = User.find_by(id: session[:user_id])
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
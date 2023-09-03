class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    users = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(
      Industry: params[:user][:Industry],
      Job_title: params[:user][:Job_title],
      Bio: params[:user][:Bio],
      Weekly_mile_goal: params[:user][:Bio],
    )
    render json: user
  end
end

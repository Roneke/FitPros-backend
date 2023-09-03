class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(
      Industry: params[:user][:Industry],
      Job_title: params[:user][:Job_title],
      Bio: params[:user][:Bio],
      Weekly_mile_goal: params[:user][:Bio],
    )
    if user.update
      render json: user
    else
      render json: { error: "not working" }
    end
  end
end

class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  ### sign-up
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

  ### update user profile
  def update
    user = User.find_by(id: params[:id])
    if current_user == user.id
      user.first_name = params[:first_name] || user.first_name
      user.last_name = params[:last_name] || user.last_name
      user.email = params[:email] || user.email
      if params [:password]
        user.password = params[:password] || user.password
        user.password_confirmation = params[:password_confirmation]
      end
      user.industry = params[:industry] || user.industry
      user.job_title = params[:job_title] || user.job_title
      user.bio = params[:bio] || user.bio
      user.weekly_mile_goal = params[:weekly_mile_goal] || user.weekly_mile_goal
      user.profile_img = params[:profile_img] || user.profile_img
      if user.save
        render json: user
      else
        render json: { error: "not working" }
      end
    end
  end

  ### delete user profiles

  def destroy
    user = User.find_by(id: params[:id])
    if user == current_user
      user.destroy
      render json: { message: "User deleted!" }, status: 200
    else
      render json: { errors: "Unauthorized" }, status: 401
    end
  end
end

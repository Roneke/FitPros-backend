class IndustriesController < ApplicationController
  def index
    industries = Industry.all
    render json: industries
  end

  def create
    industry = Industry.create(
      user_id: current_user.id,
      name: params[:name],
    )
    render json: industry
  end
end

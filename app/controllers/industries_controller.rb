class IndustriesController < ApplicationController
  def index
    industries = Industry.all
    render json: industries
  end

  def create
    industry = IndustryUser.create(
      user_id: current_user.id,
      industry_id: params[:industry_id],
    )
    render json: industry
  end
end

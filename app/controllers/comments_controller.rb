class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.find_by(id: params[:id])
  end

  def create
    @comments = Commnent.create(
      user_id: params[:user_id],
      event_id: params[:event_id],
      text_area: params[:text_area],

    )
  end

  def destroy
    @comments = Comment.find_by(id: params[:id])
    @comments.destroy
  end
end

class EventsController < ApplicationController
  def index
    @events = Event.all

    render json: @events.as_json
  end

  def show
    @event = Event.find_by(id: params[:id])

    render json: @event.as_json
  end

  def create
    @event = Event.create(
      user_id: params[:user_id],
      sport: params[:sport],
      distance: params[:distance],
      date: params[:date],
      duration: params[:duration],
      details: params[:details],
      city: params[:city],
      zipcode: params[:zipcode],
      latitude: params[:latitude],
      longtitude: params[:longtitude],
      image: params[:image],
    )
    render json: @event.as_json
  end
end

def update
  @event = Event.find_by(id: params[:id])
end

def destroy
  @event = Event.find_by(id: params[:id])
  @event.destroy
end

class EventsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @events = Event.all

    render json: @events.as_json(methods: [:friendly_date])
  end

  def show
    @event = Event.find_by(id: params[:id])

    render json: @event.as_json
  end

  def create
    location = "#{params[:address]} #{params[:city]}, #{params[:state]} #{params[:zipcode]}"
    pp location
    results = Geocoder.search(location)
    coordinates = results.first.coordinates
    pp coordinates
    @event = Event.create(
      user_id: current_user.id,
      sport: params[:sport],
      time: params[:time],
      name: params[:name],
      date: params[:date],
      address: params[:address],
      details: params[:details],
      city: params[:city],
      zipcode: params[:zipcode],
      latitude: coordinates[0],
      longtitude: coordinates[1],
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

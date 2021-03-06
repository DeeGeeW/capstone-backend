class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: locations.sort()
  end

  def create
    location = Location.new(
      state: params[:state],
      state_bird: params[:state_bird],
      location_comments: params[:location_comments]
    )
    location.save
    render json: location.as_json
  end

  def show
    location = Location.find_by(id: params[:id])
    render json: location
  end

  def update
    location = Location.find_by(id: params[:id])
    location.state = params[:state] || location.state
    location.state_bird = params[:state_bird] || location.state_bird
    location.location_comments = params[:location_comments] || location.location_comments
    location.save
    render json: location
  end

  def destroy
    location = Location.find_by(id: params[:id])
    location.destroy
    render json: {message: "location successfully destroyed."}
  end
end

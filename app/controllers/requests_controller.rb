class RequestsController < ApplicationController
  def index
    requests = Request.all
    render json: requests
  end

  def create
    request = Request.new(
      new_bird: params[:new_bird]
    )
    request.save
    render json: request.as_json
  end

  def show
    request = Request.find_by(id: params[:id])
    render json: request
  end

  def update
    request = Request.find_by(id: params[:id])
    request.new_bird = params[:new_bird] || request.new_bird
    request.save
    render json: request
  end

  def destroy
    request = Request.find_by(id: params[:id])
    request.destroy
    render json: {message: "request successfully destroyed."}
  end
end

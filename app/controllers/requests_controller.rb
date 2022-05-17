class RequestsController < ApplicationController
  def index
    requests = Request.all
    render json: requests.sort()
  end

  def create
    if current_user 
      request = Request.new(
        new_bird: params[:new_bird]
      )
      request.save
      render json: request.as_json
    else
      render json: {message: "Need to log in to add request."}
    end
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
    if current_user && current_user.is_mod == true
      request = Request.find_by(id: params[:id])
      request.destroy
      render json: {message: "request successfully destroyed."}
    else
      render json: {message: "Need to log in to add request."}
    end
  end
end

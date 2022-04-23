class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def create
    bird = Bird.new(
      c_name: params[:c_name],
      s_name: params[:s_name],
      image_url: params[:image_url],
      post_count: params[:post_count],
      description: params[:description],
      background_url: params[:background_url]
    )
    bird.save
    render json: bird.as_json
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

  def update
    bird = Bird.find_by(id: params[:id])
    bird.c_name = params[:c_name] || bird.c_name
    bird.s_name = params[:s_name] || bird.s_name
    bird.image_url = params[:image_url] || bird.image_url
    bird.post_count = params[:post_count] || bird.post_count
    bird.description = params[:description] || bird.description
    bird.background_url = params[:background_url] || bird.background_url
    bird.save
    render json: bird.as_json
  end

  def destroy
    bird = Bird.find_by(id: params[:id])
    bird.destroy
    render json: {message: "bird flew away"}
  end
end

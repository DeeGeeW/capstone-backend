class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments.as_json
  end

  def create
    comment = Comment.new(
      bird_id: params[:bird_id],
      location_id: params[:location_id],
      user_id: params[:user_id],
      comment_text: params[:comment_text],
      lat: params[:lat],
      long: params[:long]
    )
    comment.save
    render json: comment.as_json
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json: comment.as_json
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.bird_id = params[:bird_id] || comment.bird_id
    comment.location_id = params[:location_id] || comment.location_id
    comment.user_id = params[:user_id] || comment.user_id
    comment.comment_text = params[:comment_text] || comment.comment_text
    comment.lat = params[:lat] || comment.lat
    comment.long = params[:long] || comment.long
    comment.user_id = params[:user_id] || comment.user_id
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {message: "comment successfully destroyed."}
  end
end

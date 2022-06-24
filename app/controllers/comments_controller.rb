class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def create
    if current_user && params[:long][0] == "-"
      comment = Comment.new(
        bird_id: params[:bird_id],
        location_id: params[:location_id],
        user_id: current_user.id,
        comment_text: params[:comment_text],
        lat: params[:lat],
        long: params[:long],
      )
      comment.save
      render json: comment.as_json
    elsif current_user && params[:long][0] != "-"
      comment = Comment.new(
        bird_id: params[:bird_id],
        location_id: params[:location_id],
        user_id: current_user.id,
        comment_text: params[:comment_text],
        lat: params[:lat],
        long: "-" + params[:long],
      )
      comment.save
      render json: comment.as_json
    else
      render json: { message: "Please log in." }
    end
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json: comment
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
    if current_user && current_user.is_mod == true
      comment = Comment.find_by(id: params[:id])
      comment.destroy
      render json: { message: "comment successfully destroyed." }
    else
      render json: { message: "Need to log in to destroy comment." }
    end
  end
end

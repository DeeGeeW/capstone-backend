class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      email: params[:email],
      password_digest: params[:password_digest],
      username: params[:username]
    )
    user.save
    render json: user.as_json
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.email = params[:email] || user.email
    user.password_digest = params[:password_digest] || user.password_digest
    user.username = params[:username] || user.username
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "user successfully destroyed."}
  end
end

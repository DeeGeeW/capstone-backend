class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      email: params[:email],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
    render json: { message: "User created succesfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
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

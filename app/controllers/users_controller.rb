class UsersController < ApplicationController
  def create
    profile_image = params[:profile_image].present? ? params[:profile_image] : "https://www.shutterstock.com/image-vector/vector-flat-illustration-grayscale-avatar-600nw-2281862025.jpg"

    user = User.new(
      first_name: params[:first_name],
      email: params[:email],
      profile_image: params[:profile_image],
      password: params[:password],
    )
      if user.save
        render json: { message: "Welcome, #{user.first_name}!" }
      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
  end
end

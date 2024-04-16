class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def username
    @users = current_user.first_name
    render json: { first_name: @users }
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      email: params[:email],
      profile_image: params[:profile_image],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
      if user.save
        redirect_to 'http://localhost:5173/my-pantry' and return

      else
        render json: { errors: user.errors.full_messages }, status: :bad_request
      end
end

def update
  # if current_user
  #   @user = User.find(params[:id])

  #   unless current_user.id == @user.id
  #     render json: { errors: "Unauthorized to update this user" }, status: :unauthorized
  #     return
  #   end
  @user = User.find(params[:id])

  @user.update(
    first_name: params["first_name"] || @user.first_name,
    profile_image: params["profile_image"] || @user.profile_image,
  )

    if @user.save #happy path
      # render :show
      render json: { message: "Your info is updated, #{@user.first_name}!" }

    else #sad path
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  end
# end
  end
end

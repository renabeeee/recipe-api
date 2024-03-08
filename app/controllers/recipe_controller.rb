class RecipeController < ApplicationController
  def create
    if current_user
      @recipe = recipe.new(
      user_id: current_user.id,
      title: params[:title],
      )
      # @recipe.image = params[:image_url]

    if @recipe.save #happy path
      Rsvp.create(user: current_user, recipe: @recipe)
      current_user.update(status: "recipe Leader")
      render :show
    else #sad path
      render json: { errors: @recipe.errors.full_messages}, status: :unprocessable_entity
    end
    else
      render json: { message: "Please login." }, status: :unauthorized
    end
  end
end

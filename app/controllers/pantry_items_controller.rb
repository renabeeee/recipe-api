class PantryItemsController < ApplicationController
  def create
    # if current_user.admin
      @pantry_item = Pantry_item.new(
        user_id: params[:name],
        ingredient_id: params[:name],
    )
    if @pantry_item.save #happy path
      render json: { message: "Your pantry item was saved." }
      # render :show
    else #sad path
      render json: { errors: @pantry_item.errors.full_messages}, status: :unprocessable_entity
    end
  end
end

class PantryItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @pantry_items = current_user.pantry_items
    render :index
   end

   def create
    @ingredient = Ingredient.find(params[:ingredient_id])

    @pantry_item = PantryItem.new(
      user_id: current_user.id,
      ingredient_id: @ingredient.id,
      )
    if @pantry_item.save
      render json: { message: "Your item was saved! " }
      else
      render json: { errors: [@pantry_item.errors, "This is already in your pantry."], status: :unprocessable_entity }
    end
  end
end

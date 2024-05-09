class PantryItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @pantry_items = current_user.pantry_items
    render :index
   end

#    def create
#     @ingredient = Ingredient.find(params[:ingredient_id])

#     @pantry_item = PantryItem.new(
#       user_id: current_user.id,
#       ingredient_id: @ingredient.id,
#       )
#     if @pantry_item.save
#       render json: { message: "Your item was saved! " }
#       else
#       render json: { errors: [@pantry_item.errors, "This is already in your pantry."], status: :unprocessable_entity }
#     end
#   end

#   def destroy
#     @pantry_item = PantryItem.find(params[:id])

#     if @pantry_item.user == current_user
#       @pantry_item.destroy
#       render json: { message: "Item removed from pantry." }
#     else
#       render json: { error: "You are not authorized to delete this item." }, status: :unauthorized
#     end
#   end
end

class PantryItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @pantry_items = current_user.pantry_items
    render :index
   end
end

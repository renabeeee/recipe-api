class IngredientsController < ApplicationController
  def create
    @ingredient = Ingredient.new(
        name: params[:name],
      )
        if @ingredient.save
          render json: { message: "#{@ingredient.name} was added!" }
        else
          render json: { errors: @ingredient.errors.full_messages }, status: :bad_request
        end
      end
end

class IngredientsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def create
    @ingredient = Ingredient.new(
        name: params[:name],
        category: params[:category],
      )
        if @ingredient.save
          render json: { message: "#{@ingredient.name} added!" }
        else
          render json: { errors: @ingredient.errors.full_messages }, status: :bad_request
        end
  end

  def update
    @ingredient = Ingredient.find(params[:id])

      @ingredient.update(
        name: params["name"] || @ingredient.name,
        category: params["category"] || @ingredient.category,
      )

        if @ingredient.save
          render json: { message: "#{@ingredient.name} was added as a #{@ingredient.category}" }

        else
          render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    render json: { message: "The #{@ingredient.name} was deleted." }
  end
end

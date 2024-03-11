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

  def update
  # if current_user
  #   @user = User.find(params[:id])

  #   unless current_user.id == @user.id
  #     render json: { errors: "Unauthorized to update this user" }, status: :unauthorized
  #     return
  #   end
       @ingredient = Ingredient.find(params[:id])

        @ingredient.update(
          name: params["name"] || @ingredient.name,
          category: params["category"] || @ingredient.category,
        )

          if @ingredient.save #happy path
            # render :show
            render json: { message: "#{@ingredient.name} was add as a #{@ingredient.category}" }

          else #sad path
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
      # end
        end
end

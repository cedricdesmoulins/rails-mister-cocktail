class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredients = Ingredient.new
  end

  def create
   @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end



  def edit
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def update

  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient = Ingredient.destroy
  end

  private

    def ingredient_params
    params.require(:ingredient).permit(:name)
    end

end

class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:garden_id])
    @dose = @cocktail.doses.new(doses_params)
    if @doses.save
      redirect_to @cocktail
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end

end







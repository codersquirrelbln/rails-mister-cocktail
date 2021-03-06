class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @placeholder = 'you'
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

    # def destroy
    #   @cocktail = Cocktail.find(params[:id])
    #   @cocktail.destroy
    #   redirect_to cocktail_path(@cocktail)
    # end
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :photo)
  end
end

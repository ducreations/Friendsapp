class WishesController < ApplicationController
  before_action :wish_id, only: [:destroy]

  def index
    @wishes = Wish.all
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)
    if @wish.save
      redirect_to wishes_path, notice: "Wish successfully added"
    else
      render :new
    end
  end

  def destroy
    if @wish.destroy
      redirect_to wishes_path
    end
  end

  private
  def wish_params
    params.require(:wish).permit(:name, :status)
  end

  def wish_id
    @wish = Wish.find(params[:id])
  end
end

class FooditemsController < ApplicationController
  before_action :set_fooditem, only: [:show, :edit, :update, :destroy]
  
  def index
    @fooditems = Fooditem.all
    @menus = Menu.all
  end

  def show
  end

  def destroy
  end

  def new
    @fooditem = Fooditem.new
  end

  def create
    @fooditem = Fooditem.new(fooditem_params)
    respond_to do |format|
      if @fooditem.save
        format.html { redirect_to @fooditem, notice: 'Food Item successfully created.' }
        format.json { render :show, status: :created, location: @fooditem }  
      else
        format.html { render :new }
        format.json { render json: @fooditem.errors, status: :unprocesable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fooditem.update(fooditem_params)
        format.html { redirect_to @fooditem, notice: 'Fooditem was successfully updated.' }
        format.json { render :show, status: :ok, location: @fooditem }
      else
        format.html { render :edit }
        format.json { render json: @fooditem.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  private

  def set_fooditem
    @fooditem = Fooditem.find(params[:id])
  end

  def fooditem_params
    params.require(:fooditem).permit(:name, :quantity, :unitprice, :itemcategory, :fooditem_image)
  end
end

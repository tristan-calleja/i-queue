class MenusController < ApplicationController

    before_action :set_menu, only: [:show, :edit, :update, :destroy]
  
  
    def index
      @menus = Menu.all
    end
  
    def new
      @menu = Menu.new
    end
  
    def create
      @menu = Menu.new(menu_params)
      respond_to do |format|
        if @menu.save
          format.html { redirect_to @menu, notice: 'Menu successfully created.' }
          format.json { render :show, status: :created, location: @menu }  
        else
          format.html { render :new }
          format.json { render json: @menu.errors, status: :unprocesable_entity }
        end
      end
    end
  
    def destroy
    end
  
    def edit
    end
  
    def update
      respond_to do |format|
        if @menu.update(menu_params)
          format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
          format.json { render :show, status: :ok, location: @menu }
        else
          format.html { render :edit }
          format.json { render json: @menu.errors, status: :unprocessable_entity }
        end
      end
    end
  
    private
  
    def set_menu
      @menu = Menu.find(params[:id])
    end
  
    def menu_params
      params.require(:menu).permit(:fooditem_id, :price, :startdate, :enddate)
    end
  

  
end

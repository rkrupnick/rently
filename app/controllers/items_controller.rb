class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def show
        
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(params[:item])
        if @item.save
          flash[:success] = "Object successfully created"
          redirect_to @item
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
    
    
end

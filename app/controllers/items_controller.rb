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
    
    def edit
    #  @item = .find()
    end
    
    def def update
      @item = Item.find(params[:id])
        if @item.update_attributes(params[:item])
          flash[:success] = "Item was successfully updated"
          redirect_to @item
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
      @item = Item.find(params[:id])
      if @item.destroy
        flash[:success] = 'Object was successfully deleted.'
        redirect_to items_url
      else
        flash[:error] = 'Something went wrong'
        redirect_to items_url
      end
    end
    
    
end

class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)
    if @item.save
      flash[:notice] = "Wiki was saved."
        redirect_to [@item]
    else
      flash[:alert] = "There was an error saving your item."
        render :new
    end

  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end

require 'action_view'
include ActionView::Helpers::DateHelper
class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)
    if @item.save
      flash[:notice] = "Wiki was saved."
        redirect_to items_path
    else
      flash[:alert] = "There was an error saving your item."
        render :new
    end
    #distance_of_time_in_words(@item.created_at, Time.now)
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" was destroyed."
      redirect_to @item
    else
      flash[:alert] = "There was an error deleting your item."
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end

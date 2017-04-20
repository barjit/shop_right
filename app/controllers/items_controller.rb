class ItemsController < ApplicationController
  def create
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
    @item = @shopping_list.items.create(items_params) 
    redirect_to shopping_list_path(@shopping_list)
  end

  def destroy
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
    @item = @shopping_list.items.find(params[:id])
    @item.destroy
    redirect_to shopping_list_path(@shopping_list)
  end

  private

    def items_params
      params.require(:item).permit(:name, :unit, :quantity)
    end
end

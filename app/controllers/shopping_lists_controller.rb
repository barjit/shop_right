class ShoppingListsController < ApplicationController
  
  before_action :set_shopping_list, only: [:show, :edit, :update, :destroy]

##############################################

  def index
    @shopping_lists = ShoppingList.all
  end

##############################################

  def show
    @items = @shopping_list.items
  end

##############################################

  def edit
    @shopping_list.items
  end

##############################################

  def create

    @shopping_list = ShoppingList.create(shopping_list_params)

    @meals = Meal.where(id:[@shopping_list.meal_ids])
    
    create_item
      
    respond_to do |format|
      if @shopping_list.save
        format.html { redirect_to @shopping_list, notice: 'Shopping List was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_list }
      else
        format.html { render :new }
        format.json { render json: @shopping_list.errors, status: :unprocessable_entity }
      end
    end 

  end

##############################################

  def update
    respond_to do |format|
      if @shopping_list.update(shopping_list_params)
        format.html { redirect_to @shopping_list, notice: 'Shopping List was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_list }
      else
        format.html { render :edit }
        format.json { render json: @shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

##############################################

  def destroy
    @shopping_list.destroy
    respond_to do |format|
      format.html { redirect_to shopping_lists_url, notice: 'Shopping List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

##############################################

  private

    def set_shopping_list
      @shopping_list = ShoppingList.find(params[:id])
    end


    def shopping_list_params
      params.require(:shopping_list).permit(:name, {meal_ids: []}, {items_attributes: [:shopping_list_id, :name, :quantity, :unit]})
    end

    def create_item
      @meals.map do |meal|
        meal.ingredients.map do |ingredient|
          @shopping_list.items.build(name: ingredient.name, quantity: ingredient.quantity, unit: ingredient.unit)
        end
      end
    end

end

#    @shopping_list.name = prompt "What would you like to call this shopping list?"

#    def prompt(*args)
#      print(*args)
#      gets
#    end


#:meal_ids => []

#meal_attributes: [:meal_ids, :name, :description, :method, :meal_image, :diet, ingredients_attributes: [:name, :quantity, :unit]]

#shopping_list_id: @shopping_list.id

#{items_attributes: [:shopping_list_id, :name, :quantity, :unit]}

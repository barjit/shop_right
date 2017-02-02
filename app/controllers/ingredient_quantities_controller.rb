class IngredientQuantitiesController < ApplicationController
  before_action :set_ingredient_quantity, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_quantities
  # GET /ingredient_quantities.json
  def index
    @ingredient_quantities = IngredientQuantity.all
  end

  # GET /ingredient_quantities/1
  # GET /ingredient_quantities/1.json
  def show
  end

  # GET /ingredient_quantities/new
  def new
    @ingredient_quantity = IngredientQuantity.new
  end

  # GET /ingredient_quantities/1/edit
  def edit
  end

  # POST /ingredient_quantities
  # POST /ingredient_quantities.json
  def create
    @ingredient_quantity = IngredientQuantity.new(ingredient_quantity_params)

    respond_to do |format|
      if @ingredient_quantity.save
        format.html { redirect_to @ingredient_quantity, notice: 'Ingredient quantity was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient_quantity }
      else
        format.html { render :new }
        format.json { render json: @ingredient_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_quantities/1
  # PATCH/PUT /ingredient_quantities/1.json
  def update
    respond_to do |format|
      if @ingredient_quantity.update(ingredient_quantity_params)
        format.html { redirect_to @ingredient_quantity, notice: 'Ingredient quantity was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient_quantity }
      else
        format.html { render :edit }
        format.json { render json: @ingredient_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_quantities/1
  # DELETE /ingredient_quantities/1.json
  def destroy
    @ingredient_quantity.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_quantities_url, notice: 'Ingredient quantity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_quantity
      @ingredient_quantity = IngredientQuantity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_quantity_params
      params.require(:ingredient_quantity).permit(:meal_id, :ingredient_id, :quantity)
    end
end

class CategoriesTransaction1sController < ApplicationController
  before_action :set_categories_transaction1, only: %i[show edit update destroy]

  # GET /categories_transaction1s or /categories_transaction1s.json
  def index
    @categories_transaction1s = CategoriesTransaction1.all
  end

  # GET /categories_transaction1s/1 or /categories_transaction1s/1.json
  def show; end

  # GET /categories_transaction1s/new
  def new
    @categories_transaction1 = CategoriesTransaction1.new
  end

  # GET /categories_transaction1s/1/edit
  def edit; end

  # POST /categories_transaction1s or /categories_transaction1s.json
  def create
    @categories_transaction1 = CategoriesTransaction1.new(categories_transaction1_params)

    respond_to do |format|
      if @categories_transaction1.save
        format.html do
          redirect_to categories_transaction1_url(@categories_transaction1),
                      notice: 'Categories transaction1 was successfully created.'
        end
        format.json { render :show, status: :created, location: @categories_transaction1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_transaction1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_transaction1s/1 or /categories_transaction1s/1.json
  def update
    respond_to do |format|
      if @categories_transaction1.update(categories_transaction1_params)
        format.html do
          redirect_to categories_transaction1_url(@categories_transaction1),
                      notice: 'Categories transaction1 was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @categories_transaction1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_transaction1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_transaction1s/1 or /categories_transaction1s/1.json
  def destroy
    @categories_transaction1.destroy

    respond_to do |format|
      format.html do
        redirect_to categories_transaction1s_url, notice: 'Categories transaction1 was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_categories_transaction1
    @categories_transaction1 = CategoriesTransaction1.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def categories_transaction1_params
    params.require(:categories_transaction1).permit(:transactions1s_id, :categories_id)
  end
end

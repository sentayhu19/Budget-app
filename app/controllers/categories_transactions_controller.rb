class CategoriesTransactionsController < ApplicationController
  before_action :set_categories_transaction, only: %i[ show edit update destroy ]

  # GET /categories_transactions or /categories_transactions.json
  def index
    @categories_transactions = CategoriesTransaction.all
  end

  # GET /categories_transactions/1 or /categories_transactions/1.json
  def show
  end

  # GET /categories_transactions/new
  def new
    @categories_transaction = CategoriesTransaction.new
  end

  # GET /categories_transactions/1/edit
  def edit
  end

  # POST /categories_transactions or /categories_transactions.json
  def create
    @categories_transaction = CategoriesTransaction.new(categories_transaction_params)

    respond_to do |format|
      if @categories_transaction.save
        format.html { redirect_to categories_transaction_url(@categories_transaction), notice: "Categories transaction was successfully created." }
        format.json { render :show, status: :created, location: @categories_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_transactions/1 or /categories_transactions/1.json
  def update
    respond_to do |format|
      if @categories_transaction.update(categories_transaction_params)
        format.html { redirect_to categories_transaction_url(@categories_transaction), notice: "Categories transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @categories_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_transactions/1 or /categories_transactions/1.json
  def destroy
    @categories_transaction.destroy

    respond_to do |format|
      format.html { redirect_to categories_transactions_url, notice: "Categories transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_transaction
      @categories_transaction = CategoriesTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categories_transaction_params
      params.require(:categories_transaction).permit(:transactions_id, :categories_id)
    end
end

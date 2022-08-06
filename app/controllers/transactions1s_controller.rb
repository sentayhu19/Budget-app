class Transactions1sController < ApplicationController
  before_action :set_transactions1, only: %i[show edit update destroy]

  # GET /transactions1s or /transactions1s.json
  def index
    @transactions1s = Transactions1.where(user: current_user)
  end

  # GET /transactions1s/1 or /transactions1s/1.json
  def show; end

  # GET /transactions1s/new
  def new
    @transactions1 = Transactions1.new
    @categories = Category.where(user: current_user)
  end

  # GET /transactions1s/1/edit
  def edit; end

  # POST /transactions1s or /transactions1s.json
  def create
    @transactions1 = Transactions1.new(transactions1_params)

    @transactions1.user = current_user
    @transactions1.save
    create_cat_transacs unless params[:categories].blank?

    respond_to do |format|
      if @transactions1.save
        format.html { redirect_to transactions1s_path, notice: 'Transactions1 was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transactions1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions1s/1 or /transactions1s/1.json
  def update
    respond_to do |format|
      if @transactions1.update(transactions1_params)
        format.html { redirect_to transactions1_url(@transactions1), notice: 'Transactions1 was successfully updated.' }
        format.json { render :index, status: :ok, location: @transactions1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transactions1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions1s/1 or /transactions1s/1.json
  def destroy
    @transactions1s.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transactions1
    @transactions1 = Transactions1.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def create_cat_transacs
    params[:categories].each do |k, _v|
      CategoriesTransaction1.create(category: Category.find(k), transactions1: @transactions1s)
    end
  end

  def transactions1_params
    params.require(:transactions1).permit(:name, :amount, :category)
  end
end

class Transactions1sController < ApplicationController
  before_action :set_transactions1, only: %i[show edit update destroy]

  # GET /transactions1s or /transactions1s.json
  def index
    @transactions1s = Transactions1.all
  end

  # GET /transactions1s/1 or /transactions1s/1.json
  def show; end

  # GET /transactions1s/new
  def new
    @transactions1 = Transactions1.new
  end

  # GET /transactions1s/1/edit
  def edit; end

  # POST /transactions1s or /transactions1s.json
  def create
    @transactions1 = Transactions1.new(transactions1_params)

    respond_to do |format|
      if @transactions1.save
        format.html { redirect_to transactions1_url(@transactions1), notice: 'Transactions1 was successfully created.' }
        format.json { render :show, status: :created, location: @transactions1 }
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
        format.json { render :show, status: :ok, location: @transactions1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transactions1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions1s/1 or /transactions1s/1.json
  def destroy
    @transactions1.destroy

    respond_to do |format|
      format.html { redirect_to transactions1s_url, notice: 'Transactions1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transactions1
    @transactions1 = Transactions1.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transactions1_params
    params.require(:transactions1).permit(:name, :amount, :User_id)
  end
end

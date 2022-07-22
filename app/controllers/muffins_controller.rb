class MuffinsController < ApplicationController
  before_action :set_muffin, only: %i[ show edit update destroy ]

  # GET /muffins or /muffins.json
  def index
    @muffins = Muffin.all
  end

  # GET /muffins/1 or /muffins/1.json
  def show
  end

  # GET /muffins/new
  def new
    @muffin = Muffin.new
  end

  # GET /muffins/1/edit
  def edit
  end

  # POST /muffins or /muffins.json
  def create
    @muffin = Muffin.new(muffin_params)

    respond_to do |format|
      if @muffin.save
        format.html { redirect_to muffin_url(@muffin), notice: "Muffin was successfully created." }
        format.json { render :show, status: :created, location: @muffin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @muffin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muffins/1 or /muffins/1.json
  def update
    respond_to do |format|
      if @muffin.update(muffin_params)
        format.html { redirect_to muffin_url(@muffin), notice: "Muffin was successfully updated." }
        format.json { render :show, status: :ok, location: @muffin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @muffin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muffins/1 or /muffins/1.json
  def destroy
    @muffin.destroy

    respond_to do |format|
      format.html { redirect_to muffins_url, notice: "Muffin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muffin
      @muffin = Muffin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def muffin_params
      params.require(:muffin).permit(:name, :price, :description)
    end
end

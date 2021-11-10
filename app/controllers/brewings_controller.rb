class BrewingsController < ApplicationController
  before_action :set_brewing, only: %i[ show edit update destroy ]

  # GET /brewings or /brewings.json
  def index
    @brewings = Brewing.all
  end

  # GET /brewings/1 or /brewings/1.json
  def show
  end

  # GET /brewings/new
  def new
    @brewing = Brewing.new
  end

  # GET /brewings/1/edit
  def edit
  end

  # POST /brewings or /brewings.json
  def create
    @brewing = Brewing.new(brewing_params)

    respond_to do |format|
      if @brewing.save
        format.html { redirect_to @brewing, notice: "Brewing was successfully created." }
        format.json { render :show, status: :created, location: @brewing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brewings/1 or /brewings/1.json
  def update
    respond_to do |format|
      if @brewing.update(brewing_params)
        format.html { redirect_to @brewing, notice: "Brewing was successfully updated." }
        format.json { render :show, status: :ok, location: @brewing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewings/1 or /brewings/1.json
  def destroy
    @brewing.destroy
    respond_to do |format|
      format.html { redirect_to brewings_url, notice: "Brewing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewing
      @brewing = Brewing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brewing_params
      params.require(:brewing).permit(:name, :brewers, :batch_number, :strength, :original_gravity, :final_gravity, :notes, :date)
    end
end

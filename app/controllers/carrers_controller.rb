class CarrersController < ApplicationController
  before_action :set_carrer, only: [:show, :edit, :update, :destroy]

  # GET /carrers
  # GET /carrers.json
  def index
    @carrers = Carrer.all
  end

  # GET /carrers/1
  # GET /carrers/1.json
  def show
  end

  # GET /carrers/new
  def new
    @carrer = Carrer.new
  end

  # GET /carrers/1/edit
  def edit
  end

  # POST /carrers
  # POST /carrers.json
  def create
    @carrer = Carrer.new(carrer_params)

    respond_to do |format|
      if @carrer.save
        format.html { redirect_to @carrer, notice: 'Carrer was successfully created.' }
        format.json { render :show, status: :created, location: @carrer }
      else
        format.html { render :new }
        format.json { render json: @carrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrers/1
  # PATCH/PUT /carrers/1.json
  def update
    respond_to do |format|
      if @carrer.update(carrer_params)
        format.html { redirect_to @carrer, notice: 'Carrer was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrer }
      else
        format.html { render :edit }
        format.json { render json: @carrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrers/1
  # DELETE /carrers/1.json
  def destroy
    @carrer.destroy
    respond_to do |format|
      format.html { redirect_to carrers_url, notice: 'Carrer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrer
      @carrer = Carrer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrer_params
      params.require(:carrer).permit(:name, :description, :semester_number, :objective)
    end
end

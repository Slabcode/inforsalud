class FranchisesController < ApplicationController
  before_action :set_franchise, only: [:show, :edit, :update, :destroy,:link_carrer,:link,:show_carrers]

  # GET /franchises
  # GET /franchises.json
  def index
    @franchises = Franchise.load_franchises(paga: params[:page],per_page: params[:per_page])
  end

  # GET /franchises/1
  # GET /franchises/1.json
  def show
  end

  # GET /franchises/new
  def new
    @franchise = Franchise.new
  end

  # GET /franchises/1/edit
  def edit
  end

  # POST /franchises
  # POST /franchises.json
  def create
    @franchise = Franchise.new(franchise_params)

    respond_to do |format|
      if @franchise.save
        format.html { redirect_to @franchise, notice: 'Franchise was successfully created.' }
        format.json { render :show, status: :created, location: @franchise }
      else
        format.html { render :new }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franchises/1
  # PATCH/PUT /franchises/1.json
  def update
    respond_to do |format|
      if @franchise.update(franchise_params)
        format.html { redirect_to @franchise, notice: 'Franchise was successfully updated.' }
        format.json { render :show, status: :ok, location: @franchise }
      else
        format.html { render :edit }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franchises/1
  # DELETE /franchises/1.json
  def destroy
    @franchise.destroy
    respond_to do |format|
      format.html { redirect_to franchises_url, notice: 'Franchise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def link_carrer
    @carrers = Carrer.all
  end

  def link
    respond_to do |format|
      if CarrerFranchise.add(params[:carrer],@franchise.id)
        format.html {redirect_to franchises_url,notice: "Hemos asociado la carrera exitosamente"}
        format.json { head :no_content  }
      else
        format.html {redirect_to franchises_url,notice: "No hemos podido asociado la carrera exitosamente"}
        format.json { head :no_content  }
      end
    end
  end

  def unlink
    CarrerFranchise.remove(params[:carrer_id],params[:franchise_id])
    respond_to do |format|
      format.html {redirect_to show_carrers_franchise_path(params[:franchise_id]), notice: "Hemos desenlazado la carrera exitosamente"}
      format.json { head :no_content  }
    end
  end

  def show_carrers
    @carrers = Carrer.by_franchise(id: params[:id],page: params[:page],per_page: params[:per_page])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franchise
      @franchise = Franchise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franchise_params
      params.require(:franchise).permit(:name, :address, :description)
    end
end

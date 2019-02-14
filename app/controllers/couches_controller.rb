class CouchesController < ApplicationController
  before_action :set_couch, only: [:show, :edit, :update, :destroy]

  # GET /couches
  # GET /couches.json
  def index
    @couches = Couche.all
  end

  # GET /couches/1
  # GET /couches/1.json
  def show
  end

  # GET /couches/new
  def new
    @couch = Couche.new
  end

  # GET /couches/1/edit
  def edit
  end

  # POST /couches
  # POST /couches.json
  def create
    @couch = Couche.new(couch_params)
    @couch.user_id = current_user.id
    if @couch.save
      redirect_to couch_path(@couch)
    else
      render :new
    end
  end

  # PATCH/PUT /couches/1
  # PATCH/PUT /couches/1.json
  def update
    respond_to do |format|
      if @couch.update(couch_params)
        format.html { redirect_to @couch, notice: 'Couche was successfully updated.' }
        format.json { render :show, status: :ok, location: @couch }
      else
        format.html { render :edit }
        format.json { render json: @couch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /couches/1
  # DELETE /couches/1.json
  def destroy
    @couch.destroy
    respond_to do |format|
      format.html { redirect_to couches_url, notice: 'Couche was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_couch
      @couch = Couche.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def couch_params
      params.require(:couch).permit(:marque, :modele, :taille)
    end
end

class ConnaissancesController < ApplicationController
  before_action :authenticate_user!, :set_connaissance, only: [:show, :edit, :update, :destroy]

  # GET /connaissances
  # GET /connaissances.json
  def index
    @connaissances = Connaissance.all
  end

  # GET /connaissances/1
  # GET /connaissances/1.json
  def show
  end

  # GET /connaissances/new
  def new
    @connaissance = Connaissance.new
  end

  # GET /connaissances/1/edit
  def edit
  end

  # POST /connaissances
  # POST /connaissances.json
  def create
    @connaissance = Connaissance.new(connaissance_params)

    respond_to do |format|
      if @connaissance.save
        format.html { redirect_to @connaissance, notice: 'Connaissance was successfully created.' }
        format.json { render :show, status: :created, location: @connaissance }
      else
        format.html { render :new }
        format.json { render json: @connaissance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connaissances/1
  # PATCH/PUT /connaissances/1.json
  def update
    respond_to do |format|
      if @connaissance.update(connaissance_params)
        format.html { redirect_to @connaissance, notice: 'Connaissance was successfully updated.' }
        format.json { render :show, status: :ok, location: @connaissance }
      else
        format.html { render :edit }
        format.json { render json: @connaissance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connaissances/1
  # DELETE /connaissances/1.json
  def destroy
    @connaissance.destroy
    respond_to do |format|
      format.html { redirect_to connaissances_url, notice: 'Connaissance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connaissance
      @connaissance = Connaissance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connaissance_params
      params.require(:connaissance).permit(:nom, :description)
    end
end

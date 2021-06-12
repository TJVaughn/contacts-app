class RolladexesController < ApplicationController
  before_action :set_rolladex, only: %i[ show edit update destroy ]

  # GET /rolladexes or /rolladexes.json
  def index
    @rolladexes = Rolladex.all
  end

  # GET /rolladexes/1 or /rolladexes/1.json
  def show
  end

  # GET /rolladexes/new
  def new
    @rolladex = Rolladex.new
  end

  # GET /rolladexes/1/edit
  def edit
  end

  # POST /rolladexes or /rolladexes.json
  def create
    @rolladex = Rolladex.new(rolladex_params)

    respond_to do |format|
      if @rolladex.save
        format.html { redirect_to @rolladex, notice: "Contact was successfully created." }
        format.json { render :show, status: :created, location: @rolladex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rolladex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rolladexes/1 or /rolladexes/1.json
  def update
    respond_to do |format|
      if @rolladex.update(rolladex_params)
        format.html { redirect_to @rolladex, notice: "Contact was successfully updated." }
        format.json { render :show, status: :ok, location: @rolladex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rolladex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolladexes/1 or /rolladexes/1.json
  def destroy
    @rolladex.destroy
    respond_to do |format|
      format.html { redirect_to rolladexes_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rolladex
      @rolladex = Rolladex.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rolladex_params
      params.require(:rolladex).permit(:first_name, :last_name, :email, :telephone, :twitter)
    end
end

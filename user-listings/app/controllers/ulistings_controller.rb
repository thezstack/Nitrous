class UlistingsController < ApplicationController
  before_action :set_ulisting, only: [:show, :edit, :update, :destroy]

  # GET /ulistings
  # GET /ulistings.json
  def index
    @ulistings = Ulisting.all
  end

  # GET /ulistings/1
  # GET /ulistings/1.json
  def show
  end

  # GET /ulistings/new
  def new
    @ulisting = Ulisting.new
  end

  # GET /ulistings/1/edit
  def edit
  end

  # POST /ulistings
  # POST /ulistings.json
  def create
    @ulisting = Ulisting.new(ulisting_params)

    respond_to do |format|
      if @ulisting.save
        format.html { redirect_to @ulisting, notice: 'Ulisting was successfully created.' }
        format.json { render :show, status: :created, location: @ulisting }
      else
        format.html { render :new }
        format.json { render json: @ulisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ulistings/1
  # PATCH/PUT /ulistings/1.json
  def update
    respond_to do |format|
      if @ulisting.update(ulisting_params)
        format.html { redirect_to @ulisting, notice: 'Ulisting was successfully updated.' }
        format.json { render :show, status: :ok, location: @ulisting }
      else
        format.html { render :edit }
        format.json { render json: @ulisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ulistings/1
  # DELETE /ulistings/1.json
  def destroy
    @ulisting.destroy
    respond_to do |format|
      format.html { redirect_to ulistings_url, notice: 'Ulisting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ulisting
      @ulisting = Ulisting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ulisting_params
      params.require(:ulisting).permit(:first_name, :last_name, :email, :postition)
    end
end

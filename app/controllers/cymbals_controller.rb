class CymbalsController < ApplicationController
  before_action :set_cymbal, only: [:show, :edit, :update, :destroy]
  layout 'bootstrap'

  def move
    @cymbal = Cymbal.where(position: params[:first_position]).first
    @cymbal.insert_at(params[:second_position].to_i)
    @cymbals = Cymbal.sorted
    respond_to do |f|
      f.js
    end
  end

  # GET /cymbals
  # GET /cymbals.json
  def index
    @cymbals = Cymbal.sorted
  end

  # GET /cymbals/1
  # GET /cymbals/1.json
  def show
  end

  # GET /cymbals/new
  def new
    @cymbal = Cymbal.new
  end

  # GET /cymbals/1/edit
  def edit
  end

  # POST /cymbals
  # POST /cymbals.json
  def create
    @cymbal = Cymbal.new(cymbal_params)

    respond_to do |format|
      if @cymbal.save
        format.html { redirect_to @cymbal, notice: 'Cymbal was successfully created.' }
        format.json { render :show, status: :created, location: @cymbal }
      else
        format.html { render :new }
        format.json { render json: @cymbal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cymbals/1
  # PATCH/PUT /cymbals/1.json
  def update
    respond_to do |format|
      if @cymbal.update(cymbal_params)
        format.html { redirect_to @cymbal, notice: 'Cymbal was successfully updated.' }
        format.json { render :show, status: :ok, location: @cymbal }
      else
        format.html { render :edit }
        format.json { render json: @cymbal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cymbals/1
  # DELETE /cymbals/1.json
  def destroy
    @cymbal.destroy
    respond_to do |format|
      format.html { redirect_to cymbals_url, notice: 'Cymbal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cymbal
      @cymbal = Cymbal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cymbal_params
      params.require(:cymbal).permit(:CymbalType, :family, :inches, :name, :image,:sound, :position)
    end
end

class HeirshipsController < ApplicationController
  before_action :set_heirship, only: [:show, :edit, :update, :destroy]

  # GET /heirships
  # GET /heirships.json
  def index
    @heirships = Heirship.all
  end

  # GET /heirships/1
  # GET /heirships/1.json
  def show
  end

  # GET /heirships/new
  def new
    @heirship = Heirship.new
  end

  # GET /heirships/1/edit
  def edit
  end

  # POST /heirships
  # POST /heirships.json
  def create
    @heirship = Heirship.new(heirship_params)

    respond_to do |format|
      if @heirship.save
        format.html { redirect_to @heirship, notice: 'Heirship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @heirship }
      else
        format.html { render action: 'new' }
        format.json { render json: @heirship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heirships/1
  # PATCH/PUT /heirships/1.json
  def update
    respond_to do |format|
      if @heirship.update(heirship_params)
        format.html { redirect_to @heirship, notice: 'Heirship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @heirship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heirships/1
  # DELETE /heirships/1.json
  def destroy
    @heirship.destroy
    respond_to do |format|
      format.html { redirect_to heirships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heirship
      @heirship = Heirship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heirship_params
      params.require(:heirship).permit(:transfer_date)
    end
end

class TwerksController < ApplicationController
  before_action :set_twerk, only: [:show, :edit, :update, :destroy]

  # GET /twerks
  # GET /twerks.json
  def index
    @twerks = Twerk.all
  end

  # GET /twerks/1
  # GET /twerks/1.json
  def show
  end

  # GET /twerks/new
  def new
    @twerk = Twerk.new
  end

  # GET /twerks/1/edit
  def edit
  end

  # POST /twerks
  # POST /twerks.json
  def create
    @twerk = Twerk.new(twerk_params)
    @twerk.user = current_user

    respond_to do |format|
      if @twerk.save
        format.html { redirect_to @twerk, notice: 'Twerk was successfully created.' }
        format.json { render :show, status: :created, location: @twerk }
      else
        format.html { render :new }
        format.json { render json: @twerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twerks/1
  # PATCH/PUT /twerks/1.json
  def update
    respond_to do |format|
      if @twerk.update(twerk_params)
        format.html { redirect_to @twerk, notice: 'Twerk was successfully updated.' }
        format.json { render :show, status: :ok, location: @twerk }
      else
        format.html { render :edit }
        format.json { render json: @twerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twerks/1
  # DELETE /twerks/1.json
  def destroy
    @twerk.destroy
    respond_to do |format|
      format.html { redirect_to twerks_url, notice: 'Twerk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twerk
      @twerk = Twerk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twerk_params
      params.require(:twerk).permit(:content, :user_id)
    end
end

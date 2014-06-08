class SkydiversController < ApplicationController
  before_action :set_skydiver, only: [:show, :edit, :update, :destroy]

  # GET /skydivers
  # GET /skydivers.json
  def index
    @skydivers = Skydiver.all
  end

  # GET /skydivers/1
  # GET /skydivers/1.json
  def show
  end

  # GET /skydivers/new
  def new
    @skydiver = Skydiver.new
  end

  # GET /skydivers/1/edit
  def edit
  end

  # POST /skydivers
  # POST /skydivers.json
  def create
    @skydiver = Skydiver.new(skydiver_params)

    respond_to do |format|
      if @skydiver.save
        format.html { redirect_to @skydiver, notice: 'Skydiver was successfully created.' }
        format.json { render :show, status: :created, location: @skydiver }
      else
        format.html { render :new }
        format.json { render json: @skydiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skydivers/1
  # PATCH/PUT /skydivers/1.json
  def update
    respond_to do |format|
      if @skydiver.update(skydiver_params)
        format.html { redirect_to @skydiver, notice: 'Skydiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @skydiver }
      else
        format.html { render :edit }
        format.json { render json: @skydiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skydivers/1
  # DELETE /skydivers/1.json
  def destroy
    @skydiver.destroy
    respond_to do |format|
      format.html { redirect_to skydivers_url, notice: 'Skydiver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skydiver
      @skydiver = Skydiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skydiver_params
      params.require(:skydiver).permit(:name, :last, :picture)
    end
end

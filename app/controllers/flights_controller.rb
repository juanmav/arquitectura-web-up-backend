class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  # GET /flights
  # GET /flights.json
  def index
    respond_to do |format|
        format.html {
            @flights = Flight.includes([:skydivers, :pilots, :planes, :status]).all
        }
        format.json {
            @flights = Flight.includes([:skydivers, :pilots, :planes, :status]).where(["date(created_at) = ?", Date.today]).order("day_order ASC")
            render json: @flights.to_json(:include => [:skydivers, :pilots, :planes, :status])
            }
    end
  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    @list = Flight.includes([:skydivers, :pilots, :planes]).find(params[:id])
     respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @list.to_json(:include => [:skydivers, :pilots, :planes]) }
     end
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params.except(:skydivers, :pilots, :planes))
    @flight.status = Status.find(1)
    @flight.save

    update_flight

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render json: @flight.to_json(:include => [:skydivers, :pilots, :planes, :status]) }
        #format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    @flight.update(flight_params.except(:skydivers, :pilots, :planes))

    update_flight

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_params
      params.permit(:status_id, :altitude, :day_order, skydivers: [:id], pilots: [:id], planes: [:id])
    end

    def update_flight
        @flight.skydivers.destroy_all
        @flight.pilots.destroy_all
        @flight.planes.destroy_all

        if flight_params[:status_id]
            @flight.status = Status.find(flight_params[:status_id])
        end

        # Agrego los paracaidistas
        Array(flight_params[:skydivers]).each do |value|
           @flight.skydivers << Skydiver.find(value[:id])
        end

        #Agrego los Pilotos
        Array(flight_params[:pilots]).each do |value|
           @flight.pilots << Pilot.find(value[:id])
        end

        #Agrego los Aviones
        Array(flight_params[:planes]).each do |value|
           @flight.planes << Plane.find(value[:id])
        end
    end
end

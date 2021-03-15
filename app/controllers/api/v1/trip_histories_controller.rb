class Api::V1::TripHistoriesController < ApplicationController

  before_action :set_trip_history, only: [:show, :update, :destroy]


  # GET /trip_histories
  def index
    @trip_histories = TripHistory.all

    render json: @trip_histories
  end

  # GET /trip_histories/1
  def show
    render json: @trip_history
  end

  # POST /trip_histories
  def create
    @trip_history = TripHistory.new(trip_history_params)
    if @trip_history.save
      render json: @trip_history
    else
      render json: {message: @trip_history.errors }, status: 400
    end
  end


  # PATCH/PUT /trip_histories/1
  def update
    if @trip_history.update(trip_history_params)
      render json: @trip_history
    else
      render json: @trip_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trip_histories/1
  def destroy
    @trip_history.destroy
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_trip_history
    @trip_history = TripHistory.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def trip_history_params
    params.require(:trip_history).permit(:trip_id, :user_id)
  end

end
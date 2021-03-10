class Api::V1::TripHistoriesController < ApplicationController
    beofre_action :set_trip_history, only [:show, update, :destroy]

    private

    def set_trip_history
      @trip_history = TripHistory.find(params[:id])
    end

    def trip_history_params
      params.require(:trip_history).permit(:trip_id, :user_id)
    end
end
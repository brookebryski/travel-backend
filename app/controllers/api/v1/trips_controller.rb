class Api::V1::TripsController < ApplicationController

    def index
      @trips = Trip.all 
      render json @trips
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def trip_params
        params.require(:trip).permit(:location, :days_spent)
    end

end

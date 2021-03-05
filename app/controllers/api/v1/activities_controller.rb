class Api::V1::ActivitiesController < ApplicationController

    before_action :set_trip

    def index
      render json: @trip.activities
    end
  
    def create
        
    end
  
    def show
        
    end
  
    def destroy
       
    end
  
      private

    def set_trip
      @trip = Trip.find(params[:trip_id])  
    end
    
  
    def activity_params
        params.require(:activity).permit(:trip_id, :place, :kind, :description, :date)
     end

end

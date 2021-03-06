class Api::V1::ActivitiesController < ApplicationController

    before_action :set_trip

    def index
        @activities = Activity.all
        render json: @activities
    end
  
    def show
      @activity = Activity.find(params[:id])
      render json: @activity
    end

    def create
      @activity = @trip.activities.new(activity_params)
      @activity.save
      render json: @activity  
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

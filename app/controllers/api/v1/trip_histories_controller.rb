class Api::V1::TripHistoriesController < ApplicationController
    before_action :set_trip_history, only [:show, update, :destroy]

      def index
        @trip_histories = TripHistory.all
        render json: @trip_histories
      end

      def show 
        render json: @trip_history
      end

      def create
        @trip_history = TripHistory.new(trip_history_params)
        if @trip_history.save
          render json: @trip_history
        else
          render json: {message: @trip_history.errors }, status: 400
          #how does this work?
      end
    end

      def update
        if @trip_history.update(trip_history_params)
          render json: @trip_history
        else
          render json: @trip_history.errors, status: :unprocessable_entity
           #how does this work?
      end
    end

      def destroy
        @trip_history.destroy
      end

    private

    def set_trip_history
      @trip_history = TripHistory.find(params[:id])
    end

    def trip_history_params
      params.require(:trip_history).permit(:trip_id, :user_id)
    end
end
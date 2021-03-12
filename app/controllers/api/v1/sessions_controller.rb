class Api::V1::SessionsController < ApplicationController
    #ask for clarification on when to use a sessions controller vs just handling all this logic in users controller
    
    #def create
      #@user = User.find_by(username: params[:session][:username])
      #session[:user_id] = @user.id
      
     # @user && @user.authenticate(params[:session][:password]) ? render json: @user, include: ['trips.users'] : render json: {error: 'Invalid Credentials'}
      #check on this
    #end

    #def get_current_user
        #logged_in? ? render json: current_user : render json {error: 'Please log in'}
        #check on this
    #end
    def create
      @user = User.find_by(username: params[:session][:username])
      session[:user_id] = @user.id 

      if @user && @user.authenticate(params[:session][:password])
          render json: @user, include: ['trips.users']
       else 
          render json: {
              error: "Invalid Credentials"
          }
      end 

  end 


  def get_current_user
      if logged_in?
          render json: current_user 
      else
          render json: {
              error: "Not logged in"
          }
      end
  end

    def destroy
    session.clear
    end
end 
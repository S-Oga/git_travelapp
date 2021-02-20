class UsersController < ApplicationController
    
    def show
        # @user = User.find(params[:id])
        # @travels = Travel.where(user_id: @user.id).includes(:plans)
        
        user = User.find(params[:id])
        @travels = user.travels
        @plans = @travels.plans
    end
    
end

class TravelsController < ApplicationController
    before_action :authenticate_user!, only: :new
    
    def new
        @travel = Travel.new
        @travel.plans.build
    end
    
    def create
        Travel.create(travel_params)
    end
    
    def show
        @travel = Travel.find(params[:id]).includes(:plan, :budget)
        @plans = @travel.plans
        @budget = @travel.budget
    end
    
    private
    def travel_params
        params.require(:travel).permit(:destination, :budget, :start_date, :finish_date, :duration, plans_attributes: [:id, :name, :category_id, :from, :to, :_destroy]).merge(user_id: current_user.id)
    end
    
end

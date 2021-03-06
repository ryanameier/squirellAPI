class Api::V1::SquirellSitingsController < ApplicationController
    def index
    @squirell = SquirellSiting.all
  end

  def show
    @squirell = SquirellSiting.find_by(id: params[:id])
  end

  def create
    @squirell = SquirellSiting.new(id: params[:id], squirell_type: params[:squirell_type], location: params[:location], date: params[:date], description: params[:description])
   if @squirell.save
    render :show
    else
      render json: {errors: @squirell.errors.full_messages}, status: 422
    end
  end


   def update
    @squirell = SquirellSitting.find_by(id: params[:id])
    @squirell.id = params[:id]
    @squirell.squirell_type = params[:squirell_type]
    @squirell.location = params[:location]
    @squirell.date = params[:date]
    @squirell.description = params[:description]
    @squirell.save
    render :show
  end

 def destroy
   @squirell = SquirellSiting.find_by(id: params[:id])
   @squirell.destroy
   render json: @squirell
  end
end

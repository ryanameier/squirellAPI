class SquirellSitingsController < ApplicationController

  def index
    @squirell = SquirellSiting.all
  end

  def show
    @squirell = SquirellSiting.find_by(id: params[:id])
  end
end

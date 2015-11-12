class ObservationsController < ApplicationController
  def show
  end

  def new
    @observation = Observation.new
  end

  def edit
    @observation = Observation.find_by(id: params[:id])
  end

  def destroy
  end

  def create
    if @observation && @observation.save
      redirect_to '/'
    else
      redirect_to '/observations/new'
    end
  end
end

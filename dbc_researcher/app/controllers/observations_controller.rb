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
    p observation_params
    @observation = Observation.new(observation_params)

    if @observation.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def observation_params
    params.require(:observation).permit(:observation_text, :user_id, :experiment_id)
  end

end

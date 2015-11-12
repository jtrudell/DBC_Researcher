class ObservationsController < ApplicationController

  def new
    @observation = Observation.new
  end

  def show
  end

  def edit
    @observation = Observation.find_by(id: params[:id])
  end

  def destroy
  end

  def create
    p observation_params
    @observation = current_user.observations.create(observation_text: observation_params[:observation_text], experiment_id: params[:experiment_id])

    if @observation.valid?
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def observation_params
    params.require(:observation).permit(:observation_text)
  end

end

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
    @observation = Observation.new(observation_params, user_id: current_user.id, experiment_id: params[:experiment_id])

    if @observation.save
      redirect_to '/'
    else
      redirect_to '/observations/new'
    end
  end

  private

  def observation_params
    params.require(:observation).permit(:observation_text)
  end
end

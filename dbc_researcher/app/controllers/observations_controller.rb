class ObservationsController < ApplicationController

  def index
    @observations = Observation.where(experiment_id: params[:experiment_id])
  end

  def new
    @observation = Observation.new
  end

  def show
    @observation = Observation.find_by(id: params[:id])
    @experiment = Experiment.find_by(id: params[:experiment_id])
    @proposal = Proposal.find_by(id: params[:proposal_id])
  end

  def edit
    @observation = Observation.find_by(id: params[:id])
  end

  def update
    @observation = Observation.find_by(id: params[:id])
    @observation.assign_attributes(observation_params)

    if @observation.save
      redirect_to proposal_experiment_observations_path
    else
      redirect_to edit_proposal_experiment_observation_path
    end
  end

  def create
    @observation = current_user.observations.create(observation_text: observation_params[:observation_text], experiment_id: params[:experiment_id])

    if @observation.valid?
      redirect_to proposal_experiment_observations_path
    else
      redirect_to new_proposal_experiment_observation_path
    end
  end


  private

  def observation_params
    params.require(:observation).permit(:observation_text)
  end

end

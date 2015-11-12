class ExperimentsController < ApplicationController
  def show
  end

  def index
    @experiments = Experiment.all
    # @proposals = Proposal.where(experiment_id: params[:experiment_id])
  end
  def new
    @experiment = Experiment.new
  end
  def create

      experiment = Experiment.new(proposal_id: params[:proposal_id], cohort_id: cohort_params[:cohort], user_id: session[:user_id], experiment_description: exp_params[:experiment_description], required_supplies_for_experiment: exp_params[:required_supplies_for_experiment], goal_description: exp_params[:goal_description], conclusions: exp_params[:conclusions])

      if experiment.save
        redirect_to proposal_experiments_path
      else
        flash[:error] = "Error, please enter valid experiment information."
        redirect_to new_proposal_experiment_path(params[:proposal_id])
      end
  end
  def exp_params
      params.require(:experiment).permit(:required_supplies_for_experiment, :goal_description, :conclusions, :experiment_description)
  end
  def cohort_params
      params.permit(:cohort)
  end

end

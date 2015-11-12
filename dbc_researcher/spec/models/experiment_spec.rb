require 'rails_helper'

describe Experiment do
  it 'has a valid factory' do
    expect(build(:experiment)).to be_valid
  end

  it 'is invalid without a cohort_id' do
    expect(build(:experiment, cohort_id: nil)).to_not be_valid
  end

  it 'is invalid without a proposal_id' do
    expect(build(:experiment, proposal_id: nil)).to_not be_valid
  end

  it 'is invalid without an experiment description' do
    expect(build(:experiment, experiment_description: nil)).to_not be_valid
  end

  it 'can create a completed experiment with the completed property true' do
    expect(build(:experiment, :completed_experiment).completed).to eq true
  end

  it 'creates experiments by default with a false completed property' do
    expect(build(:experiment).completed).to_not eq true
  end

end

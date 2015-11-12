require 'rails_helper'

describe Proposal do
  it 'has a valid factory' do
    expect(build(:proposal)).to be_valid
  end

  it 'is invalid without a title' do
    expect(build(:proposal, title: nil)).to_not be_valid
  end

  it 'is invalid without a description' do
    expect(build(:proposal, problem_description: nil)).to_not be_valid
  end

  it 'is invalid without a hypothesis' do
    expect(build(:proposal, hypothesis: nil)).to_not be_valid
  end

  it 'is invalid without a user id' do
    expect(build(:proposal, user_id: nil)).to_not be_valid
  end

  it 'can create an approved proposal with the approved property true' do
    expect(build(:proposal, :approved_proposal).approved).to eq true
  end

  it 'creates new proposals by default as not approved' do
    expect(build(:proposal).approved).to_not eq true
  end
  
end

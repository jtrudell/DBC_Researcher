class Experiment < ActiveRecord::Base
  belongs_to :proposal
  belongs_to :cohort
  belongs_to :user
  has_many :observations
  has_many :comments, as: :commentable

  validates :proposal_id, presence: true
  validates :cohort_id, presence: true
  validates :experiment_description, presence: true
  validates :completed, presence: true

end

class Experiment < ActiveRecord::Base
  belongs_to :proposal
  belongs_to :cohort
  has_many :observations

  has_many :comments, as: :commentable
  has_many :proposals, through: :commentable

end

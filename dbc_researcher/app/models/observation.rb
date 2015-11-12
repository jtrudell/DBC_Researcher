class Observation < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :user
  has_many :comments, as: :commentable

  validates :observation_text, :experiment_id, :user_id, presence: true
end

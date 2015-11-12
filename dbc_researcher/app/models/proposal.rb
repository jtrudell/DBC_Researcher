class Proposal < ActiveRecord::Base
  belongs_to :user

  has_many :experiments
  has_many :comments, as: :commentable

  validates :title, :problem_description, :hypothesis, :user_id, presence: true
end

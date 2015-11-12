class Proposal < ActiveRecord::Base
  belongs_to :user
  has_many :experiments
  has_many :comments, as: :commentable
end

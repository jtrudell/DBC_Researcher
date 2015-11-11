class User < ActiveRecord::Base
  validates :name :title :password_digest :email, presence: true
  validates :email, uniqueness: true
  validates_format_if :email, :with => /.*@devbootcamp.com/, :on => :create

end

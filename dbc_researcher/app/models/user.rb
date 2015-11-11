class User < ActiveRecord::Base
  validates :name, :title, :password_digest, :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /.*@devbootcamp.com/, :on => :create

end

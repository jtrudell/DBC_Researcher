require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid without a name' do
    expect(build(:user, name: nil)).to_not be_valid
  end

  it 'is invalid without an email' do
    expect(build(:user, email: nil)).to_not be_valid
  end

  it 'is invalid without a title' do
    expect(build(:user, title: nil)).to_not be_valid
  end

  it 'is invalid without a password' do
    expect(build(:user, password_digest: nil)).to_not be_valid
  end

  it 'is invalid without a dbc email address' do
    expect(build(:user, :student)).to_not be_valid
  end

  it 'can create an admin user with the admin property true' do
    expect(build(:user, :admin).admin).to eq true
  end

  it 'creates users by default with a false admin property' do
    expect(build(:user).admin).to eq false
  end

  it 'will not create a user that has an email identical to another user' do
    create(:user)
    expect(build(:user, :duplicate)).to_not be_valid
  end
end

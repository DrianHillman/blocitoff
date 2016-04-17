require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: RandomData.random_email, password: RandomData.random_sentence) }
  
  it { is_expected.to have_many(:items) }
end

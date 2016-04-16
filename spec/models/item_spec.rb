require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) {User.create!(email: RandomData.random_email, password: RandomData.random_sentence)}
  let(:item) {user.items.create!(name: RandomData.random_sentence, user: user)}
  
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:user) }
  
  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_attributes(name: name, user: user)
    end
  end
end

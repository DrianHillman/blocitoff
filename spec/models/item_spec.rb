require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) {Item.create!(name: "My Item")}
  
  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_attributes(name: "My Item")
    end
  end
end

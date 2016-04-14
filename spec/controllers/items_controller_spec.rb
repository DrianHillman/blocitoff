require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST #create" do
    it "increases the number of Post by 1" do
      expect{post :create, item: {name: RandomData.random_sentence}}.to change(Item,:count).by(1)
    end

    it "assigns the new item to @item" do
      post :create, item: {name: RandomData.random_sentence}
      expect(assigns(:item)).to eq Item.last
    end
  end
end
   

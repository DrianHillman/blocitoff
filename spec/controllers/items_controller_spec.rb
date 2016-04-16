require 'rails_helper'
include SessionsHelper

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { User.create!(name: RandomData.random_name, password: RandomData.random_sentence) }
  let(:my_item) { my_user.items.create!(name: RandomData.random_sentence, user: my_user) }
  
  
  context "signed-in user" do
    before do
      create_session(my_user)
    end
    
    describe "POST #create" do
      it "increases the number of Item by 1" do
        expect{post :create, user_id: my_user.id, item: {name: RandomData.random_sentence}}.to change(Item,:count).by(1)
      end
  
      it "assigns the new item to @item" do
        post :create, user_id: my_user.id, item: {name: RandomData.random_sentence}
        expect(assigns(:item)).to eq Item.last
      end
    end
  end
end
   

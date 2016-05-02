require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { User.create!(email: RandomData.random_email, password: RandomData.random_sentence) }
  let(:my_item) { my_user.items.create!(name: RandomData.random_sentence, user_id: my_user.id, complete: false) }


  context "signed-in user" do
    before do
      sign_in :user, my_user
    end

    describe "POST #create" do
      it "increases the number of Item by 1" do
        expect{ post :create, format: :js, item_id: my_item.id, item: {name: RandomData.random_sentence, complete: false}}.to change(Item,:count).by(1)
      end

      it "assigns the new item to @item" do
        post :create, user_id: my_user.id, item: {name: RandomData.random_sentence, complete: false}
        expect(assigns(:item)).to eq Item.last
      end
    end
    
    describe "PUT #update" do
      it "updates item with expected attributes" do
        new_name = RandomData.random_sentence
        new_status = true
        
        put :update, id: my_item.id, item: {name: new_name, complete: new_status}
        
        updated_item = assigns(:item)
        expect(updated_item.id).to eq my_item.id
        expect(updated_item.name).to eq new_name
        expect(updated_item.complete).to eq new_status
      end
    end
  end
end
namespace :todo do
  desc "Delete items older than 3 minutes"
  task delete_items: :environment do
    Item.where("created_at <=?", Time.now - 3.minutes).destroy_all
  end
end

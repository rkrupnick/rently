require 'rails_helper'

RSpec.describe Item, type: :model do
   describe "#valid?" do
     it "requires a name" do
       item = Item.create!(
         name: "Item"
       )
       expect(item).to be_valid

       item.name = ""
       expect(item).not_to be_valid
     end
   end
end

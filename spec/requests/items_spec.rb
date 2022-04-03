require 'rails_helper'

RSpec.describe "Items", type: :request do
 let(:valid_attributes) {{
   name: 'Record Player',
   description: '1979 Sony HiFi'
  }}
 #let(:invalid_attributes) {
 #  :name => ""
 #  :description => ""
 #}
  describe "GET /index" do
    it "renders a successful response" do
      Item.create! valid_attributes 
      get items_url
      expect(response).to be_successful  
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_item_path
      expect(response).to be_successful
    end
  end


end

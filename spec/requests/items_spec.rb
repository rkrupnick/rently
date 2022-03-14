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

  pending "GET /new" do
    pending "renders a successful response" do
      
    end
    
  end


end

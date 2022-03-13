require 'rails_helper'

RSpec.describe "Item management", :type => :request do
    
    it "creates an item and redirects to the item's page" do
        get "/items/new"
        expect(response).to render_template(:new)
        follow_redirect!

        expect(response).to render_template(:show)
        expect(response.body).to include("Item was successfully added.")
    end
end

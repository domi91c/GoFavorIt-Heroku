require 'rails_helper'

RSpec.describe "Inboxes", :type => :request do
  describe "GET /inboxes" do
    it "works! (now write some real specs)" do
      get inboxes_path
      expect(response.status).to be(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "SignUps", type: :request do
  describe "GET /" do
    it "returns http success" do
      get "/sign_ups"
      expect(response).to have_http_status(:success)
    end
  end

end

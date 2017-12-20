require 'rails_helper'

RSpec.describe FlatBookingController, type: :controller do

    context "GET #generate_report" do
      before do
       get :generate_report
      end
      
      it "responds successfully with an HTTP 200 status code" do
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "renders the index template" do
        expect(response).to render_template("generate_report")
      end 
  end
end
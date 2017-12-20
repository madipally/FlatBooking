require 'rails_helper'
require 'spec_helper'

describe 'flat_booking/generate_report.html.erb' do

    before(:each) do
      @flats =  FactoryGirl.create :flat
      @flats = Flat.between_dates("2017-12-20","2017-12-20")
      @flats = @flats.group_by(&:month)
      @report_type = "month"
    end
    
     it 'displays sales report' do
      render
      rendered.should have_selector("h2", text: 'Flat Booking Sales Monthly Report') 
     end
end
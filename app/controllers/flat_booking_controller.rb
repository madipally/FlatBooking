class FlatBookingController < ApplicationController
  def generate_report
    if params[:start_date] && params[:end_date] && params[:report_type]
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @report_type = params[:report_type]
      @flats = Flat.get_report(@start_date,@end_date,@report_type)
    else
      flash[:error] = "Start Date , End Date and Report Type are required!"
    end  
  end
end

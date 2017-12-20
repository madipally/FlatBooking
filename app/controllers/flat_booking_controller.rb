class FlatBookingController < ApplicationController
  def generate_report
    if params[:start_date] && params[:end_date] && params[:report_type]
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @flats = Flat.between_dates(@start_date,@end_date)
      @report_type = params[:report_type]
      if @report_type == "month"
        @flats = @flats.group_by(&:month)
      elsif @report_type == "year"
        @flats = @flats.group_by(&:year)
      end
    else
      flash[:error] = "Start Date , End Date and Report Type are required!"
    end  
  end
end

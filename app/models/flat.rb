class Flat < ApplicationRecord
  
  def month
    self.date_of_booking.strftime("%B-%Y")
  end
  def year
    self.date_of_booking.strftime("%Y")
  end
  
  scope :between_dates, ->(start_date,end_date) {where("date_of_booking between ? AND ?", start_date, end_date).order("date_of_booking desc")}
end

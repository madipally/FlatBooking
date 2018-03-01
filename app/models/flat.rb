class Flat < ApplicationRecord
  scope :get_report, ->(start_date,end_date,report_type) {select("flats.*,sum((flats.agreement_amount)+(flats.area*flats.best_price)) as amt").where("date_of_booking between ? AND ?", start_date, end_date).group("#{report_type}(date_of_booking)").order("date_of_booking desc")}
end

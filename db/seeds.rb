flat_details = [
  [10000, "2016-01-01",2000,300],
  [20000, "2016-02-01",3000,400],
  [20000, "2016-03-01",3000,200],
  [500000, "2016-05-01",10000,250],
  [30000, "2016-08-01",5000,5000],
  [30000, "2016-10-01",4000,400],
  [5000, "2016-12-01",6000,120],
  [50000, "2017-01-01",2000,300],
  [10000, "2017-02-01",300,400],
  [20000, "2017-03-01",3000,200],
  [30000, "2017-04-01",10000,250],
  [40000, "2017-05-01",5000,5000],
  [30000, "2017-06-01",4000,400],
  [5000, "2017-07-01",5000,120],
  [15000, "2017-08-31",3000,200],
  [10000, "2017-09-01",10000,250],
  [40000, "2017-10-01",5000,5000],
  [30000, "2017-11-01",4000,400],
  [5000, "2017-12-01",5000,120],
]

flat_details.each do |agreement_amount , date_of_booking,best_price,area|
  Flat.create( agreement_amount: agreement_amount, date_of_booking: date_of_booking,best_price: best_price,area: area )
end
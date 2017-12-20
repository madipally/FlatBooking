class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.integer :agreement_amount
      t.date :date_of_booking
      t.integer :best_price
      t.integer :area

      t.timestamps
    end
  end
end

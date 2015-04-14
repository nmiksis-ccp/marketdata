class CreateCmes < ActiveRecord::Migration
  def change
    create_table :cmes do |t|

      t.string :month
      t.string :product
      t.decimal :last, precision: 8, scale: 2
      t.decimal :change, precision: 8, scale: 2
      t.decimal :priorsettle, precision: 8, scale: 2
      t.decimal :open, precision: 8, scale: 2
      t.decimal :high, precision: 8, scale: 2
      t.decimal :low, precision: 8, scale: 2
      t.decimal :volume, precision: 8, scale: 2
      t.string :hilowlimit, precision: 8, scale: 2
      t.string :updated
      t.timestamps

    end
  end
end

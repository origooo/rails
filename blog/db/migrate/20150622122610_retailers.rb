class Retailers < ActiveRecord::Migration
  def change
  	create_table :retailers do |r|
      r.string :name
      r.string :location
      r.string :phone
      r.string :fb
      r.string :web

      r.timestamps null: false
    end
  end
end

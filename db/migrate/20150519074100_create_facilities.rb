class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :facility_name
      t.string :proprieter
      t.string :district
      t.string :cluster

      t.timestamps null: false
    end
  end
end

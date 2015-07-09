class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :program
      t.date :start_date
      t.date :end_date
      t.text :cases_reported
      t.text :resolved_law
      t.text :percentage
      t.text :churches
      t.text :outreach
      t.text :clinics
      t.text :campaigns
      t.text :resolved_informal

      t.timestamps null: false
    end
  end
end

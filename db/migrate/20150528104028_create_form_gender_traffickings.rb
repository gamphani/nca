class CreateFormGenderTraffickings < ActiveRecord::Migration
  def change
    create_table :form_gender_traffickings do |t|
      t.date :start_date
      t.date :end_date
      t.string :trfk_cases_reported
      t.string :trfk_cases_resolved
      t.string :trfk_percent_reduction
      t.string :trfk_incorporation_in_church
      t.string :trfk_outreach
      t.string :trfk_mobile_clinic
      t.string :trfk_awareness
      t.string :trfk_informal_justice
      t.string :trfk_other_service_providers
      t.string :trfk_rescued
      t.string :trfk_court_rehabilitated
      t.string :trfk_network_initiatives
      t.string :trfk_interagency_meet
      t.string :trfk_issues_raised

      t.timestamps null: false
    end
  end
end

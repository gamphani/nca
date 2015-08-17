class CreateFormHealthHivs < ActiveRecord::Migration
  def change
    create_table :form_health_hivs do |t|
      t.date :start_date
      t.date :end_date
      t.text :hiv_rights_holders
      t.text :hiv_lobby_meetings
      t.text :hiv_women_htc_pmtct
      t.text :hiv_budget_allocation
      t.text :hiv_rh_receiving_care
      t.text :hiv_women_youth_ovc
      t.text :hiv_reconstruction
      t.text :hiv_people_htc
      t.text :hiv_child_pss
     
      t.timestamps null: false
    end
  end
end

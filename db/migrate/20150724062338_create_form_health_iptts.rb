class CreateFormHealthIptts < ActiveRecord::Migration
  def change
    create_table :form_health_iptts do |t|
      t.date :start_date
      t.date :end_date
      t.integer :iptt_fp_service_providers
      t.integer :iptt_active_youth
      t.integer :iptt_youth_partcipation
      t.integer :iptt_life_skills
      t.integer :iptt_SRHR_BCC
      t.integer :iptt_leaders_reached
      t.integer :iptt_trained_service_providers

      t.timestamps null: false
    end
  end
end

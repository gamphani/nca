class CreateFormHealthReproductiveHealthOutput2 < ActiveRecord::Migration
  def change
    create_table :form_health_reproductive_health_output_2s do |t|
      t.date :start_date
      t.date :end_date
      t.integer :youth_clubs
      t.integer :active_clubs
      t.integer :star_cycle_train_m_less_10
      t.integer :star_cycle_train_m_10_14
      t.integer :star_cycle_train_m_15_20
      t.integer :star_cycle_train_m_21_24
      t.integer :star_cycle_train_f_less_10
      t.integer :star_cycle_train_f_10_14
      t.integer :star_cycle_train_f_15_20
      t.integer :star_cycle_train_f_21_24
      t.integer :star_cycle_groups_formed
      t.integer :life_skills_train_m_less_10
      t.integer :life_skills_train_m_10_14
      t.integer :life_skills_train_m_15_20
      t.integer :life_skills_train_m_15_20
      t.integer :life_skills_train_m_21_24
      t.integer :life_skills_train_f_less_10
      t.integer :life_skills_train_f_10_14
      t.integer :life_skills_train_f_15_20
      t.integer :life_skills_train_f_15_20
      t.integer :life_skills_train_f_21_24
      t.integer :peer_edu_train_m_less_10
      t.integer :peer_edu_train_m_10_14
      t.integer :peer_edu_train_m_15_20
      t.integer :peer_edu_train_m_21_24
      t.integer :peer_edu_train_f_less_10
      t.integer :peer_edu_train_f_10_14
      t.integer :peer_edu_train_f_15_20
      t.integer :peer_edu_train_f_21_24
      t.integer :youth_centre_rehabilitated
      t.integer :bicycles
      t.integer :leadership
      t.timestamps null: false
    end
  end
end

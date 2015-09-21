class CreateFormHealthReproductiveHealthOutputTwo < ActiveRecord::Migration
  def change
    create_table :form_health_reproductive_health_output_twos do |t|
      t.date :start_date
      t.date :end_date

      t.string :youth_clubs
      t.string :active_clubs
      t.string :star_cycle_train_m_less_10
      t.string :star_cycle_train_m_10_14
      t.string :star_cycle_train_m_15_20
      t.string :star_cycle_train_m_21_24
      t.string :star_cycle_train_f_less_10
      t.string :star_cycle_train_f_10_14
      t.string :star_cycle_train_f_15_20
      t.string :star_cycle_train_f_21_24
      t.string :star_cycle_groups_formed
      t.string :life_skills_train_m_less_10
      t.string :life_skills_train_m_10_14
      t.string :life_skills_train_m_15_20
      t.string :life_skills_train_m_15_20
      t.string :life_skills_train_m_21_24
      t.string :life_skills_train_f_less_10
      t.string :life_skills_train_f_10_14
      t.string :life_skills_train_f_15_20
      t.string :life_skills_train_f_15_20
      t.string :life_skills_train_f_21_24
      t.string :peer_edu_train_m_less_10
      t.string :peer_edu_train_m_10_14
      t.string :peer_edu_train_m_15_20
      t.string :peer_edu_train_m_21_24
      t.string :peer_edu_train_f_less_10
      t.string :peer_edu_train_f_10_14
      t.string :peer_edu_train_f_15_20
      t.string :peer_edu_train_f_21_24
      t.string :youth_centre_rehabilitated
      t.string :bicycles
      t.string :leadership
      t.timestamps null: false

    end
  end
end

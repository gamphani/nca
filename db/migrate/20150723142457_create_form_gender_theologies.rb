class CreateFormGenderTheologies < ActiveRecord::Migration
  def change
    create_table :form_gender_theologies do |t|
      t.date :start_date
      t.date :end_date
      t.integer :theo_training_manuals
      t.integer :theo_f_and_m_teachers
      t.integer :theo_context_text
      t.integer :theo_counselors
      t.integer :theo_code_conduct
      t.integer :theo_code_conduct_emp
      t.integer :theo_diaconal_strategies
      t.integer :theo_develop_advocacy_strategy
      t.integer :theo_using_advocacy_strategy
      t.integer :theo_monit_visit
      t.integer :theo_reports_produced

      t.timestamps null: false
    end
  end
end

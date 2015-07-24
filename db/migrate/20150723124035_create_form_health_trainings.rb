class CreateFormHealthTrainings < ActiveRecord::Migration
  def change
    create_table :form_health_trainings do |t|
      t.integer :trn_hundred_percent_license
      t.integer :trn_management_systems
      t.integer :trn_teaching_materials
      t.integer :trn_capacity_built
      t.integer :trn_satisfaction_level
      t.integer :trn_course_outlines
      t.integer :trn_BSC_RM_Curr
      t.integer :trn_clinical_asses_tools
      t.integer :trn_tutor_perf_tools
      t.integer :trn_mentor_skills
      t.integer :trn_reduction_unprof_student
      t.integer :trn_tutor_induct_midwife
      t.integer :trn_strategic_plans
      t.integer :trn_ops_plans
      t.integer :trn_financial_systems
      t.integer :trn_SOPs
      t.integer :trn_good_governance
      t.integer :trn_policies
      t.integer :trn_motivated_pupils
      t.integer :trn_research
      t.integer :trn_ntwk_meetings
      t.integer :trn_MOU
      t.integer :trn_monitoring

      t.timestamps null: false
    end
  end
end

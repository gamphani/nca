class RemoveColumnsfromFormHealthTrainingsTable < ActiveRecord::Migration
  def change
   remove_column :form_health_trainings, :trn_financial_systems
   remove_column :form_health_trainings, :trn_management_systems
   remove_column :form_health_trainings, :trn_teaching_materials
   remove_column :form_health_trainings, :trn_capacity_built
   remove_column :form_health_trainings, :trn_course_outlines
   remove_column :form_health_trainings, :trn_clinical_asses_tools
   remove_column :form_health_trainings, :trn_SOPs
  end
end

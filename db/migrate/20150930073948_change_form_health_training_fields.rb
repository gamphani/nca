class ChangeFormHealthTrainingFields < ActiveRecord::Migration
  def change
       change_column :form_health_trainings, :trn_hundred_percent_license, :string
       change_column :form_health_trainings, :trn_strategic_plans, :string
       change_column :form_health_trainings, :trn_ops_plans, :string
  end
end

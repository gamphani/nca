class AddFieldsToFormHealthTraining < ActiveRecord::Migration
  def change
  	add_column :form_health_trainings, :trn_policy_typ1, :string
    add_column :form_health_trainings, :trn_policy_num1, :string
    add_column :form_health_trainings, :trn_policy_typ2, :string
    add_column :form_health_trainings, :trn_policy_num2, :string
    add_column :form_health_trainings, :trn_policy_typ3, :string
    add_column :form_health_trainings, :trn_policy_num3, :string
  end
end

class AddDatesToTraining < ActiveRecord::Migration
  def change
    add_column :form_health_trainings, :start_date, :date, before: :trn_hundred_percent_license
    add_column :form_health_trainings, :end_date, :date, before: :trn_management_systems
  end
end

class AddFieldsToFormHealthReproductiveHealthOutputThrees < ActiveRecord::Migration
  def change
    add_column :form_health_reproductive_health_output_threes, :start_date, :date
    add_column :form_health_reproductive_health_output_threes, :end_date, :date
    add_column :form_health_reproductive_health_output_threes, :created_at, :date
    add_column :form_health_reproductive_health_output_threes, :updated_at, :date
  end
end

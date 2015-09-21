class RemoveFieldsToFormHealthReproductiveHealthOutputThrees < ActiveRecord::Migration
  def change
    remove_column :form_health_reproductive_health_output_threes, :start_date, :string
    remove_column :form_health_reproductive_health_output_threes, :end_date, :string
    remove_column :form_health_reproductive_health_output_threes, :created_at, :string
  end
end

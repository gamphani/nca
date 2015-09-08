class AddServiceDelRefFromFormHealthMnhs < ActiveRecord::Migration
  def change
  	add_column :form_health_mnhs, :service_del_ref, :string, after: :service_del_mart_death
  end
end

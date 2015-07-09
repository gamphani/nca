class RemoveServiceDelRefFromFormHealthMnhs < ActiveRecord::Migration
  def change
    remove_column :form_health_mnhs, :service_del_ref, :string
  end
end

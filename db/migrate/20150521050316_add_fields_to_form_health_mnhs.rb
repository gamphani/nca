class AddFieldsToFormHealthMnhs < ActiveRecord::Migration
  def change
    add_column :form_health_mnhs, :facility, :string, after: :end_date
    add_column :form_health_mnhs, :service_del_ref_eclampsia, :string, after: :service_del_mart_death
    add_column :form_health_mnhs, :service_del_ref_labour, :string, after: :service_del_ref_eclampsia
    add_column :form_health_mnhs, :service_del_ref_aph, :string, after: :service_del_ref_labour
    add_column :form_health_mnhs, :service_del_ref_cs, :string, after: :service_del_ref_aph
    add_column :form_health_mnhs, :service_del_ref_other, :string, after: :service_del_ref_cs
    add_column :form_health_mnhs, :service_del_ref_breech, :string, after: :service_del_ref_other
    add_column :form_health_mnhs, :service_del_ref_twins, :string, after: :service_del_ref_breech
    add_column :form_health_mnhs, :nnd_fsb, :string, after: :nnd_ref
    add_column :form_health_mnhs, :nnd_msb, :string, after: :nnd_fsb
    add_column :form_health_mnhs, :nnd_premature, :string, after: :nnd_msb
    add_column :form_health_mnhs, :nnd_lbw, :string, after: :nnd_premature
    add_column :form_health_mnhs, :outreach_initial, :string, after: :outreach_preg_mother
    add_column :form_health_mnhs, :outreach_subsequent, :string, after: :outreach_initial
    add_column :form_health_mnhs, :outreach_2nd, :string, after: :outreach_subsequent
    add_column :form_health_mnhs, :outreach_3rd, :string, after: :outreach_2nd
    add_column :form_health_mnhs, :outreach_4th, :string, after: :outreach_3rd
    add_column :form_health_mnhs, :outreach_underfive_initial, :string, after: :outreach_male
    add_column :form_health_mnhs, :outreach_underfive_subsequent, :string, after: :outreach_underfive_initial
  end
end

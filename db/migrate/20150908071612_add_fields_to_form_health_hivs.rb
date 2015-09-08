class AddFieldsToFormHealthHivs < ActiveRecord::Migration
  def change
    add_column :form_health_hivs, :hiv_pychosocial, :string
    add_column :form_health_hivs, :hiv_cbccs_constructed, :string
    add_column :form_health_hivs, :hiv_cbccs_rehabilitated, :string
    add_column :form_health_hivs, :hiv_cc_established, :string
    add_column :form_health_hivs, :hiv_child_cbccs, :string
    add_column :form_health_hivs, :hiv_child_cc, :string
    add_column :form_health_hivs, :hiv_caregiver_ecd, :string
    add_column :form_health_hivs, :hiv_caregiver_icdp, :string
    add_column :form_health_hivs, :hiv_star_circle_established, :string
    add_column :form_health_hivs, :hiv_community_star_circle, :string
    add_column :form_health_hivs, :hiv_child_eid, :string
    add_column :form_health_hivs, :hiv_viral_load, :string
    add_column :form_health_hivs, :hiv_resistance, :string
    add_column :form_health_hivs, :hiv_adolescent_life_skills, :string
  end
end

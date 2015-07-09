class CreateFormHealthMnhs < ActiveRecord::Migration
  def change
    create_table :form_health_mnhs do |t|
      t.date :start_date
      t.date :end_date
      t.text :service_del_svd
      t.text :service_del_ve
      t.text :service_del_mart_death
      t.text :service_del_ref
      t.text :neonates_male
      t.text :neonates_female
      t.text :nnd_male
      t.text :nnd_female
      t.text :nnd_ref
      t.text :outreach_preg_mother
      t.text :outreach_male
      t.text :outreach_female
      t.text :mobilization_men
      t.text :slas
      t.text :facility_planning
      t.text :inf_prev_male
      t.text :inf_prev_female
      t.text :exl_bf_male
      t.text :exl_bf_female
      t.text :hac_train_male
      t.text :hac_train_female
      t.text :menu_male
      t.text :menu_female
      t.text :nutri_male
      t.text :nutri_female
      t.text :tpt_comm_male
      t.text :tpt_comm_female
      t.text :sf_mothood_male
      t.text :sf_mothood_female
      t.text :hac_male
      t.text :hac_female
      t.text :cluster_male
      t.text :cluster_female
      t.text :dec_male
      t.text :dec_female
      t.text :skilled_doc
      t.text :skilled_cli
      t.text :skilled_nur
      t.text :support_hsa
      t.text :support_PA
      t.text :support_HCW
      t.text :support_guard
      t.text :support_drv
      t.text :maintenance_veh
      t.text :maintenance_mcycle
      t.text :maintenance_comp
      t.text :maintenance_boat
      t.text :maintenance_rad
      t.text :water_run
      t.text :water_borehole
      t.text :water_elec
      t.text :water_solar
      t.text :water_torch
      t.text :demo_garden
      t.text :hearth
      t.text :preg_shelter
      t.text :sup_DHO
      t.text :sup_coord
      t.text :sup_focal
      t.text :sup_NCA
      t.text :sup_zone

      t.timestamps null: false
    end
  end
end

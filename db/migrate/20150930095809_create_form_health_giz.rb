class CreateFormHealthGiz < ActiveRecord::Migration
  def change
    create_table :form_health_gizs do |t|
      t.date :start_date
      t.date :end_date
      t.string :giz_interv_mcci_child_rights
      t.string :giz_interv_adol_srhr
      t.string :giz_teach_srhr
      t.string :giz_sch_auth_srhr
      t.string :giz_claim_holders
      t.string :giz_legal_ins
      t.string :giz_duty_bear_srhr
      t.string :giz_comm_diag
      t.string :giz_adol_sch_hiv
      t.string :giz_comm_chan
      t.string :giz_iec_mat
      t.string :giz_child_prot_work
      t.string :giz_comm_mobl
      t.string :giz_adol_youth_clb
      t.string :giz_dist_hiv_prenv
      t.string :giz_srhr_opn_dys
      t.string :giz_sympo_alhiv
      t.string :giz_teen_club_alhiv
      t.string :giz_nut_asses
      t.string :giz_adol_asses
      t.timestamps null: false
    end
  end
end

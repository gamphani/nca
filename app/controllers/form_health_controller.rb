class FormHealthController < ApplicationController
  def index
  end
  def create
     if params.has_key?("form_health_mnh")
      @form = FormHealthMnh.new(params[:form_health_mnh].permit(:start_date, :end_date, :facility, :service_del_svd, :service_del_ve, :service_del_mart_death, :service_del_ref_eclampsia, :service_del_ref_labour, :service_del_ref_aph, :service_del_ref_cs, :service_del_ref_other, :service_del_ref_breech, :service_del_ref_twins, :neonates_male, :neonates_female, :nnd_male, :nnd_female, :nnd_ref, :nnd_fsb, :nnd_msb, :nnd_premature, :nnd_lbw, :outreach_preg_mother, :outreach_initial, :outreach_subsequent, :outreach_2nd, :outreach_3rd, :outreach_4th, :outreach_male, :outreach_underfive_initial, :outreach_underfive_subsequent, :outreach_female, :mobilization_men, :slas, :facility_planning, :inf_prev_male, :inf_prev_female, :exl_bf_male, :exl_bf_female, :hac_train_male, :hac_train_female, :menu_male, :menu_female, :nutri_male, :nutri_female, :tpt_comm_male, :tpt_comm_female, :sf_mothood_male, :sf_mothood_female, :hac_male, :hac_female, :cluster_male, :cluster_female, :dec_male, :dec_female, :skilled_doc, :skilled_cli, :skilled_nur, :support_hsa, :support_PA, :support_HCW, :support_guard, :support_drv, :maintenance_veh, :maintenance_mcycle, :maintenance_comp, :maintenance_boat, :maintenance_rad, :water_run, :water_borehole, :water_elec, :water_solar, :water_torch, :demo_garden, :hearth, :preg_shelter, :sup_DHO, :sup_coord, :sup_focal, :sup_NCA, :sup_zone))
 @form.save
    elsif params.has_key?("form_health_training")
    @form = FormHealthTraining.new(params[:form_health_training].permit(:start_date, :end_date, :trn_hundred_percent_license, :trn_management_systems, :trn_teaching_materials, :trn_capacity_built, :trn_satisfaction_level, :trn_course_outlines, :trn_BSC_RM_Curr, :trn_clinical_asses_tools, :trn_tutor_perf_tools, :trn_mentor_skills, :trn_reduction_unprof_student, :trn_tutor_induct_midwife, :trn_strategic_plans, :trn_ops_plans, :trn_financial_systems, :trn_SOPs, :trn_good_governance, :trn_policies, :trn_motivated_pupils, :trn_research, :trn_ntwk_meetings, :trn_MOU, :trn_monitoring))
     @form.save
    elsif params.has_key?("form_health_iptt")
     @form = FormHealthIptt.new(params[:form_health_iptt].permit(:start_date, :end_date, :iptt_fp_service_providers, :iptt_active_youth, :iptt_youth_partcipation, :iptt_life_skills, :iptt_SRHR_BCC, :iptt_leaders_reached, :iptt_trained_service_providers))
     @form.save
   
elsif params.has_key?("form_health_hiv")
     @form = FormHealthHiv.new(params[:form_health_hiv].permit(:start_date, :end_date, :hiv_rights_holders, :hiv_lobby_meetings, :hiv_women_htc_pmtct, :hiv_budget_allocation, :hiv_rh_receiving_care, :hiv_women_youth_ovc, :hiv_reconstruction, :hiv_people_htc, :hiv_child_pss))
     @form.save


     end

     redirect_to '/form_health/index'
  end
  def mnh
  	@facilities = Facility.all
  end
  def training
  end
  def hiv
  end

end

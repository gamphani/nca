class FormHealthController < ApplicationController
  def index
  end
  def create
    
     if params.has_key?("form_health_mnh")
      @form = FormHealthMnh.new(params[:form_health_mnh].permit(:start_date, :end_date, :facility, :service_del_svd, :service_del_ve, :service_del_mart_death, :service_del_ref, :service_del_ref_eclampsia, :service_del_ref_labour, :service_del_ref_aph, :service_del_ref_cs, :service_del_ref_breech, :service_del_ref_twins, :neonates_male, :neonates_female, :nnd_male, :nnd_female, :nnd_ref, :nnd_fsb, :nnd_msb, :nnd_premature, :nnd_lbw, :outreach_preg_mother, :outreach_initial, :outreach_2nd, :outreach_3rd, :outreach_4th, :outreach_male, :outreach_underfive_initial, :outreach_underfive_subsequent, :outreach_female, :mobilization_men, :slas, :facility_planning, :inf_prev_male, :inf_prev_female, :exl_bf_male, :exl_bf_female, :hac_train_male, :hac_train_female, :menu_male, :menu_female, :nutri_male, :nutri_female, :tpt_comm_male, :tpt_comm_female, :sf_mothood_male, :sf_mothood_female, :hac_male, :hac_female, :cluster_male, :cluster_female, :dec_male, :dec_female, :skilled_doc, :skilled_cli, :skilled_nur, :support_hsa, :support_PA, :support_HCW, :support_guard, :support_drv, :maintenance_veh, :maintenance_mcycle, :maintenance_comp, :maintenance_boat, :maintenance_rad, :water_run, :water_borehole, :water_elec, :water_solar, :water_torch, :demo_garden, :hearth, :preg_shelter, :sup_DHO, :sup_coord, :sup_focal, :sup_NCA, :sup_zone))
 @form.save
    elsif params.has_key?("form_health_training")
    @form = FormHealthTraining.new(params[:form_health_training].permit(:start_date, :end_date, :trn_hundred_percent_license, :trn_satisfaction_level, :trn_BSC_RM_Curr, :trn_tutor_perf_tools, :trn_mentor_skills, :trn_reduction_unprof_student, :trn_tutor_induct_midwife, :trn_strategic_plans, :trn_ops_plans, :trn_good_governance, :trn_policies, :trn_motivated_pupils, :trn_research, :trn_ntwk_meetings, :trn_MOU, :trn_monitoring, :trn_college, :trn_research_tut, :trn_management_systems_typ1, :trn_management_systems_num1, :trn_management_systems_typ2, :trn_management_systems_num2, :trn_management_systems_typ3, :trn_management_systems_num3, :trn_teaching_materials_typ1, :trn_teaching_materials_num1, :trn_teaching_materials_typ2, :trn_teaching_materials_num2, :trn_teaching_materials_typ3, :trn_teaching_materials_num3, :trn_capacity_built_typ1, :trn_capacity_built_num1, :trn_capacity_built_typ2, :trn_capacity_built_num2, :trn_capacity_built_typ3, :trn_capacity_built_num3, :trn_course_outlines_typ1, :trn_course_outlines_num1, :trn_course_outlines_typ2, :trn_course_outlines_num2, :trn_course_outlines_typ3, :trn_course_outlines_num3, :trn_course_outlines_typ4, :trn_course_outlines_num4, :trn_course_outlines_typ5, :trn_course_outlines_num5, :trn_clinical_asses_tools_typ1, :trn_clinical_asses_tools_num1, :trn_clinical_asses_tools_typ2, :trn_clinical_asses_tools_num2, :trn_clinical_asses_tools_typ3, :trn_clinical_asses_tools_num3, :trn_tutor_perf_tools_utl, :trn_SOPs_typ1, :trn_SOPs_num1, :trn_SOPs_typ2, :trn_SOPs_num2, :trn_SOPs_typ3, :trn_SOPs_num3))
     @form.save
    elsif params.has_key?("form_health_iptt")
     @form = FormHealthIptt.new(params[:form_health_iptt].permit(:start_date, :end_date, :iptt_fp_service_providers, :iptt_active_youth, :iptt_youth_partcipation, :iptt_life_skills, :iptt_SRHR_BCC, :iptt_leaders_reached, :iptt_trained_service_providers))
     @form.save
   
elsif params.has_key?("form_health_hiv")
     @form = FormHealthHiv.new(params[:form_health_hiv].permit(:start_date, :end_date, :hiv_rights_holders, :hiv_lobby_meetings, :hiv_women_htc_pmtct, :hiv_budget_allocation, :hiv_rh_receiving_care, :hiv_women_youth_ovc, :hiv_reconstruction, :hiv_people_htc, :hiv_pychosocial, :hiv_cbccs_constructed, :hiv_cbccs_rehabilitated, :hiv_cc_established, :hiv_child_cbccs, :hiv_child_cc, :hiv_caregiver_ecd, :hiv_caregiver_icdp, :hiv_star_circle_established, :hiv_community_star_circle, :hiv_child_eid, :hiv_viral_load, :hiv_resistance, :hiv_adolescent_life_skills))
     @form.save
   
elsif params.has_key?("form_health_reproductive_health_output_two")
     @form = FormHealthReproductiveHealthOutputTwo.new(params[:form_health_reproductive_health_output_two].permit(:start_date, :end_date, :youth_clubs, :active_clubs, :star_cycle_train_m_less_10, :star_cycle_train_m_10_14, :star_cycle_train_m_15_20, :star_cycle_train_m_21_24, :star_cycle_train_f_less_10, :star_cycle_train_f_10_14, 
:star_cycle_train_f_15_20, :star_cycle_train_f_21_24, :star_cycle_groups_formed, :life_skills_train_m_less_10, :life_skills_train_m_10_14, :life_skills_train_m_15_20, 
:life_skills_train_m_15_20, :life_skills_train_m_21_24, :life_skills_train_f_less_10, :life_skills_train_f_10_14, :life_skills_train_f_15_20, :life_skills_train_f_15_20, :life_skills_train_f_21_24, 
:peer_edu_train_m_less_10, :peer_edu_train_m_10_14, :peer_edu_train_m_15_20, :peer_edu_train_m_21_24, :peer_edu_train_f_less_10, :peer_edu_train_f_10_14, 
:peer_edu_train_f_15_20, :peer_edu_train_f_21_24, :youth_centre_rehabilitated, :bicycles, :leadership))
     @form.save
elsif params.has_key?("form_health_reproductive_health_output_three")
     @form = FormHealthReproductiveHealthOutputThree.new(params[:form_health_reproductive_health_output_three].permit(:start_date, :end_date,
:sens_camp_key_mes_1, :sens_camp_key_mes_2, :sens_camp_key_mes_3, :sens_camp_key_mes_4, :sens_camp_key_mes_5, :sens_camp_key_mes_6, 
:sens_camp_key_mes_7, :sens_camp_key_mes_8, :sens_camp_key_mes_9, :sens_camp_channel_1, :sens_camp_channel_2, :sens_camp_channel_3, 
:sens_camp_channel_4, :sens_camp_channel_5, :sens_camp_channel_6, :sens_camp_channel_7, :sens_camp_channel_8, :sens_camp_channel_9, 
:sens_camp_key_mes_fig_1, :sens_camp_key_mes_fig_2, :sens_camp_key_mes_fig_3, :sens_camp_key_mes_fig_4, :sens_camp_key_mes_fig_5, 
:sens_camp_key_mes_fig_6, :sens_camp_key_mes_fig_7, :sens_camp_key_mes_fig_8, :sens_camp_key_mes_fig_9, :ad_camp_key_mes_1, 
:ad_camp_key_mes_2, :ad_camp_key_mes_3, :ad_camp_key_mes_4, :ad_camp_key_mes_5, :ad_camp_key_mes_6, :ad_camp_key_mes_7, 
:ad_camp_key_mes_8, :ad_camp_key_mes_9, :ad_camp_key_mes_10, :ad_camp_key_mes_11, :ad_camp_key_mes_12,  :ad_camp_key_channel_1, 
:ad_camp_key_channel_2, :ad_camp_key_channel_3, :ad_camp_key_channel_4, :ad_camp_key_channel_5, :ad_camp_key_channel_6, :ad_camp_key_channel_7, 
:ad_camp_key_channel_8, :ad_camp_key_channel_9, :ad_camp_key_channel_10, :ad_camp_key_channel_11, :ad_camp_key_channel_12, :ad_camp_key_mes_fig_1, 
:ad_camp_key_mes_fig_2, :ad_camp_key_mes_fig_3, :ad_camp_key_mes_fig_4, :ad_camp_key_mes_fig_5, :ad_camp_key_mes_fig_6, :ad_camp_key_mes_fig_7, 
:ad_camp_key_mes_fig_8, :ad_camp_key_mes_fig_9, :ad_camp_key_mes_fig_10, :ad_camp_key_mes_fig_11, :ad_camp_key_mes_fig_12, :special_event_days, 
:management_of_youth_clubs, :iec_posters, :iec_10, :iec_flyers, :iec_tshirts, :iec_10121022, :jingles, :jingles_aired, :couples, :counselors, :parliament ))
     @form.save

    elsif params.has_key?("form_health_reproductive_health_output_four")
     @form = FormHealthReproductiveHealthOutputFour.new(params[:form_health_reproductive_health_output_four].permit(:start_date, :end_date, :comm_dia_leaders_m, :comm_dia_leaders_f, :comm_dia_chiefs_m, :comm_dia_chiefs_f, :comm_dia_politicians_m, :comm_dia_politicians_f, :srh_leaders_m, :srh_leaders_f, :srh_chiefs_m, :srh_chiefs_f, :srh_politicians_m, :srh_politicians_f, :sgbv_m, :sgbv_f))
     @form.save
     end

     redirect_to '/form_health/index'
  end
  def mnh
  	@facilities = Facility.all
  end
  def training
    @colleges = College.all
  end
  def hiv
  end

end

class ReportHealthController < ApplicationController
  def index
  	@facilities = Facility.all
  end
  def generate
  	 if params[:report][:start_date].blank?
  	    flash[:error] = "Please enter a valid start date#{params[:report][:start_date]}"
        redirect_to :action => 'index'

     end
     if params[:report][:end_date].blank?
     	flash[:error] = "Please enter a valid start date #{params[:report][:start_date]}"
     end
     if params[:report][:report_type] == "" or params[:report][:report_type] == "0"
     	flash[:error] = "Please select a valid report type #{params[:report][:start_date]}"
     elsif params[:report][:report_type] == "1" and (params[:report][:facility] == "" or params[:report][:facility] == "0")
     	flash[:error] = "Please select a valid facility #{params[:report][:start_date]}"
     end
         #raise params.inspect
	 @report = FormHealthMnh.all.where("start_date >= ? AND end_date <= ? ", params[:report][:start_date], params[:report][:end_date]).each{}
	 if params[:report][:report_type] == "1"
	 	redirect_to :action => 'mnh', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date], :facility => params[:report][:facility]
	 elsif params[:report][:report_type] == "2"
	 	redirect_to :action => 'training', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
	 elsif params[:report][:report_type] == "3"
	 	redirect_to :action => 'reproductive_health_output_two', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
         elsif params[:report][:report_type] == "4"
                redirect_to :action => 'hiv', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
	 elsif params[:report][:report_type] == "5"
	 	redirect_to :action => 'reproductive_health_output_three', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
	 elsif params[:report][:report_type] == "6"
	 	redirect_to :action => 'reproductive_health_output_four', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]

     end
	 #redirect_to '/report_health/mnh'

  end
  def mnh
	 
	@report = FormHealthMnh.select("SUM(service_del_svd) as service_del_svd, SUM(service_del_ve) AS service_del_ve, 
	 	SUM(service_del_mart_death) as service_del_mart_death,SUM(service_del_ref) AS service_del_ref, 
                SUM(service_del_ref_eclampsia) AS service_del_ref_eclampsia,
	 	SUM(service_del_ref_labour) as service_del_ref_labour, SUM(service_del_ref_aph) as service_del_ref_aph, 
	 	SUM(service_del_ref_cs) as service_del_ref_cs, SUM(service_del_ref_breech) as service_del_ref_breech, 
                SUM(service_del_ref_twins) AS service_del_ref_twins,
	 	SUM(nnd_fsb) AS nnd_fsb, SUM(nnd_msb) AS nnd_msb, SUM(nnd_premature) AS nnd_premature, SUM(nnd_lbw) as nnd_lbw,
	 	SUM(outreach_initial) as outreach_initial, SUM(outreach_2nd) AS outreach_2nd,
	 	SUM(outreach_3rd) as outreach_3rd, SUM(outreach_4th) AS outreach_4th, SUM(outreach_underfive_initial) as outreach_underfive_initial,
	 	SUM(outreach_underfive_subsequent) as outreach_underfive_subsequent, SUM(neonates_male) AS neonates_male, 
	 	SUM(neonates_female) AS neonates_female, SUM(nnd_male) AS nnd_male, 
	 	SUM(nnd_female) AS nnd_female, SUM(nnd_ref) AS nnd_ref, SUM(outreach_preg_mother) AS outreach_preg_mother, 
	 	SUM(outreach_male) AS outreach_male, SUM(outreach_female) AS outreach_female, SUM(mobilization_men) as mobilization_men, 
	 	SUM(slas) AS slas,SUM(facility_planning) AS facility_planning, SUM(inf_prev_male) as inf_prev_male, 
	 	SUM(inf_prev_female) as inf_prev_female, SUM(exl_bf_male) as exl_bf_male, SUM(exl_bf_female) AS exl_bf_female, 
	 	SUM(hac_train_male) AS hac_train_male, SUM(hac_train_female) AS hac_train_female, SUM(menu_male) AS menu_male, 
	 	SUM(menu_female) AS menu_female, SUM(nutri_male) AS nutri_male, SUM(nutri_female) as nutri_female, 
	 	SUM(tpt_comm_male) as tpt_comm_male, SUM(tpt_comm_female) as tpt_comm_female,SUM(sf_mothood_male) AS sf_mothood_male, 
	 	SUM(sf_mothood_female) AS sf_mothood_female, SUM(hac_male) AS hac_male, SUM(hac_female) AS hac_female, SUM(cluster_male) as cluster_male, 
	 	SUM(cluster_female) AS cluster_female, SUM(dec_male) AS dec_male, SUM(dec_female) as dec_female, SUM(skilled_doc) As skilled_doc, 
	 	SUM(skilled_cli) AS skilled_cli, SUM(skilled_nur) AS skilled_nur, SUM(support_hsa) AS support_hsa, SUM(support_PA) as support_PA, 
	 	SUM(support_HCW) AS support_HCW, SUM(support_guard) AS support_guard, SUM(support_drv) support_drv, 
	 	SUM(maintenance_veh) AS maintenance_veh, SUM(maintenance_mcycle) AS maintenance_mcycle, SUM(maintenance_comp) AS maintenance_comp, 
	 	SUM(maintenance_boat) maintenance_boat, SUM(maintenance_rad) AS maintenance_rad,SUM(water_run) AS water_run, 
	 	SUM(water_borehole) AS water_borehole, SUM(water_elec) AS water_elec, SUM(water_solar) AS water_solar, 
	 	SUM(water_torch) AS water_torch, SUM(demo_garden) AS demo_garden, SUM(hearth) AS hearth, SUM(preg_shelter) AS preg_shelter, 
	 	SUM(sup_DHO) AS sup_DHO, SUM(sup_coord) AS sup_coord, SUM(sup_focal) AS sup_focal, SUM(sup_NCA) AS sup_NCA, 
	 	SUM(sup_zone) AS sup_zone").where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], params[:facility])




@mnh = @report.first

@report2 = FormHealthMnh.select("maintenance_veh, maintenance_mcycle, maintenance_comp, maintenance_boat, maintenance_rad, water_run, water_borehole, water_elec, water_solar, water_torch, preg_shelter").where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], params[:facility])
@mnh2 = @report2.last

facilities = Hash.new
FormHealthMnh.where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date]).find_each do |f|
	facilities[f.facility] = Facility.select('facility_name').where('id = ?', f.facility).last.facility_name
end

facility_names = Array.new(facilities.length)

service_del_svd = Array.new(facilities.length)
service_del_ve = Array.new(facilities.length)
service_del_mart_death = Array.new(facilities.length)
service_del_ref = Array.new(facilities.length)
service_del_ref_eclampsia = Array.new(facilities.length)
service_del_ref_labour = Array.new(facilities.length)
service_del_ref_aph = Array.new(facilities.length)
service_del_ref_cs = Array.new(facilities.length) 
service_del_ref_breech = Array.new(facilities.length) 
service_del_ref_twins = Array.new(facilities.length)

@facility_name = ""
@start_date = params[:start_date]
@end_date = params[:end_date]

facilities.each do |k,v|
	@facility_name = v if k == params[:facility]
	facility_names << v
	report = FormHealthMnh.select("SUM(service_del_svd) as service_del_svd, SUM(service_del_ve) AS service_del_ve, 
	 	SUM(service_del_mart_death) as service_del_mart_death,SUM(service_del_ref) AS service_del_ref, 
        SUM(service_del_ref_eclampsia) AS service_del_ref_eclampsia, SUM(service_del_ref_labour) as service_del_ref_labour, 
        SUM(service_del_ref_aph) as service_del_ref_aph, SUM(service_del_ref_cs) as service_del_ref_cs, 
        SUM(service_del_ref_breech) as service_del_ref_breech,SUM(service_del_ref_twins) AS service_del_ref_twins"
                ).where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], k).last

	service_del_svd << report.service_del_svd.to_i rescue 0
    service_del_ve << report.service_del_ve.to_i rescue 0
    service_del_mart_death << report.service_del_mart_death.to_i rescue 0
    service_del_ref << report.service_del_ref.to_i rescue 0
    service_del_ref_eclampsia << report.service_del_ref_eclampsia.to_i rescue 0
    service_del_ref_labour << report.service_del_ref_labour.to_i rescue 0
    service_del_ref_aph << report.service_del_ref_aph.to_i rescue 0
    service_del_ref_cs << report.service_del_ref_cs.to_i rescue 0
    service_del_ref_breech << report.service_del_ref_breech.to_i rescue 0
    service_del_ref_twins << report.service_del_ref_twins.to_i rescue 0
end



@chart1 = LazyHighCharts::HighChart.new('graph') do |f|
  f.title({ :text=>"Number of deliveries conducted"})
  f.xAxis(:title => {:text => "Facilities", :margin => 10}, :categories => facility_names.compact)
  f.yAxis [{:title => {:text => "Figures", :margin => 10} }]
  
  f.series(:type=> 'spline', :name => "SVD", :data => service_del_svd.compact)
  f.series(:type=> 'spline', :name => "V/E",  :data => service_del_ve.compact)
  f.series(:type=> 'spline', :name => "Maternal Deaths",  :data => service_del_mart_death.compact)
  f.series(:type=> 'spline', :name => "Referals", :data => service_del_ref.compact)
  f.series(:type=> 'spline', :name => "Pre/Eclampsia", :data => service_del_ref_eclampsia.compact)
  f.series(:type=> 'spline', :name => "Obstructed labor/ prolonged labour", :data => service_del_ref_labour.compact)
  f.series(:type=> 'spline', :name => "APH/PPH", :data => service_del_ref_aph.compact)
  f.series(:type=> 'spline', :name => "CS", :data => service_del_ref_cs.compact)
  f.series(:type=> 'spline', :name => "Breech", :data => service_del_ref_breech.compact)
  f.series(:type=> 'spline', :name => "Twin deliveries", :data => service_del_ref_twins.compact)

   #f.legend(:align => 'center', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
 end





neonates_male = Array.new(facilities.length)
neonates_female = Array.new(facilities.length)


facilities.each do |k,v|
	
	report = FormHealthMnh.select("SUM(neonates_male) AS neonates_male, 
	 	SUM(neonates_female) AS neonates_female"
                ).where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], k).last

neonates_male << report.neonates_male.to_i rescue 0 
neonates_female << report.neonates_female.to_i rescue 0

end

@chart2 = LazyHighCharts::HighChart.new('graph') do |f|
  f.title({ :text=>"Number of neonates - Live babies"})
  f.xAxis(:title => {:text => "Facilities", :margin => 10}, :categories => facility_names.compact)
  f.yAxis [{:title => {:text => "Figures", :margin => 10} }]
  
  f.series(:type=> 'spline', :name => "Male", :data => neonates_male.compact)
  f.series(:type=> 'spline', :name => "Female",  :data => neonates_female.compact)
  
 

   #f.legend(:align => 'center', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
 end

nnd_male = Array.new(facilities.length)
nnd_female = Array.new(facilities.length)
nnd_ref = Array.new(facilities.length)
nnd_fsb = Array.new(facilities.length)
nnd_msb = Array.new(facilities.length)
nnd_premature = Array.new(facilities.length)
nnd_lbw = Array.new(facilities.length)



facilities.each do |k,v|
	
	report = FormHealthMnh.select("SUM(nnd_male) AS nnd_male, SUM(nnd_female) AS nnd_female, SUM(nnd_ref) AS nnd_ref,
		SUM(nnd_fsb) AS nnd_fsb, SUM(nnd_msb) AS nnd_msb, SUM(nnd_premature) AS nnd_premature, SUM(nnd_lbw) as nnd_lbw"
                ).where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], k).last

	nnd_male << report.nnd_male.to_i rescue 0 
	nnd_female << report.nnd_female.to_i rescue 0 
	nnd_ref << report.nnd_ref.to_i rescue 0
	nnd_fsb << report.nnd_fsb.to_i rescue 0 
	nnd_msb << report.nnd_msb.to_i rescue 0
	nnd_premature << report.nnd_premature.to_i rescue 0
	nnd_lbw << report.nnd_lbw.to_i rescue 0


end




@chart3 = LazyHighCharts::HighChart.new('graph') do |f|
  f.title({ :text=>"Number of neonates - NNDs"})
  f.xAxis(:title => {:text => "Facilities", :margin => 10}, :categories => facility_names.compact)
  f.yAxis [{:title => {:text => "Figures", :margin => 10} }]
  
  f.series(:type=> 'spline', :name => "Male", :data => nnd_male.compact)
  f.series(:type=> 'spline', :name => "Female",  :data => nnd_female.compact)
  f.series(:type=> 'spline', :name => "Referals",  :data => nnd_ref.compact)
  f.series(:type=> 'spline', :name => "FSB", :data => nnd_fsb.compact)
  f.series(:type=> 'spline', :name => "MSB", :data => nnd_msb.compact)
  f.series(:type=> 'spline', :name => "Premature", :data => nnd_premature.compact)
  f.series(:type=> 'spline', :name => "LBW", :data => nnd_lbw.compact)
  
   #f.legend(:align => 'center', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
 end

outreach_preg_mother = Array.new(facilities.length)
outreach_initial = Array.new(facilities.length)
outreach_2nd = Array.new(facilities.length)
outreach_3rd = Array.new(facilities.length)
outreach_4th = Array.new(facilities.length)

facilities.each do |k,v|
	
	report = FormHealthMnh.select("SUM(outreach_preg_mother) AS outreach_preg_mother, SUM(outreach_initial) as outreach_initial, SUM(outreach_2nd) AS outreach_2nd,
	 	SUM(outreach_3rd) as outreach_3rd, SUM(outreach_4th) AS outreach_4th"
                ).where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], k).last

outreach_preg_mother << report.outreach_preg_mother.to_i rescue 0 
outreach_initial << report.outreach_initial.to_i rescue 0 
outreach_2nd << report.outreach_2nd.to_i rescue 0
outreach_3rd << report.outreach_3rd.to_i rescue 0
outreach_4th << report.outreach_4th.to_i rescue 0

end






 @chart4 = LazyHighCharts::HighChart.new('graph') do |f|
  f.title({ :text=>"Conduct outreach clinics"})
  f.xAxis(:title => {:text => "Facilities", :margin => 10}, :categories => facility_names.compact)
  f.yAxis [{:title => {:text => "Figures", :margin => 10} }]
  
  f.series(:type=> 'spline', :name => "Pregnant mothers", :data => outreach_preg_mother.compact)
  f.series(:type=> 'spline', :name => "Initial",  :data => outreach_initial.compact)
  f.series(:type=> 'spline', :name => "2nd",  :data => outreach_2nd.compact)
  f.series(:type=> 'spline', :name => "3rd", :data => outreach_3rd.compact)
  f.series(:type=> 'spline', :name => "4th", :data => outreach_4th.compact)
  
   #f.legend(:align => 'center', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
 end

  
outreach_male = Array.new(facilities.length)
outreach_female = Array.new(facilities.length)
outreach_underfive_initial = Array.new(facilities.length)
outreach_underfive_subsequent = Array.new(facilities.length)

facilities.each do |k,v|
	
	report = FormHealthMnh.select("SUM(outreach_male) AS outreach_male, SUM(outreach_female) AS outreach_female, SUM(outreach_underfive_initial) as outreach_underfive_initial,
	 	SUM(outreach_underfive_subsequent) as outreach_underfive_subsequent"
                ).where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], params[:end_date], k).last

outreach_male << report.outreach_male.to_i rescue 0
outreach_female << report.outreach_female.to_i rescue 0
outreach_underfive_initial << report.outreach_underfive_initial.to_i rescue 0
outreach_underfive_subsequent << report.outreach_underfive_subsequent.to_i rescue 0


  @chart5 = LazyHighCharts::HighChart.new('graph') do |f|
  f.title({ :text=>"Underfives"})
  f.xAxis(:title => {:text => "Facilities", :margin => 10}, :categories => facility_names.compact)
  f.yAxis [{:title => {:text => "Figures", :margin => 10} }]
  
  f.series(:type=> 'spline', :name => "Male", :data => outreach_male.compact)
  f.series(:type=> 'spline', :name => "Female",  :data => outreach_female.compact)
  f.series(:type=> 'spline', :name => "Initial",  :data => outreach_underfive_initial.compact)
  f.series(:type=> 'spline', :name => "Subsequent", :data => outreach_underfive_subsequent.compact)
  end
  
   #f.legend(:align => 'center', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
 end




 
  end
 def training
   @report = FormHealthTraining.select("SUM(trn_hundred_percent_license) as trn_hundred_percent_license, SUM(trn_management_systems) AS trn_management_systems, SUM(trn_teaching_materials) AS trn_teaching_materials, SUM(trn_capacity_built) AS trn_capacity_built, SUM(trn_satisfaction_level) AS trn_satisfaction_level, SUM(trn_course_outlines) as trn_course_outlines, SUM(trn_BSC_RM_Curr) AS trn_BSC_RM_Curr, SUM(trn_clinical_asses_tools) as trn_clinical_asses_tools, SUM(trn_tutor_perf_tools) as trn_tutor_perf_tools, SUM(trn_mentor_skills) as trn_mentor_skills, SUM(trn_reduction_unprof_student) as trn_reduction_unprof_student, SUM(trn_tutor_induct_midwife) as trn_tutor_induct_midwife, SUM(trn_strategic_plans) as trn_strategic_plans, SUM(trn_ops_plans) AS trn_ops_plans, SUM(trn_financial_systems) AS trn_financial_systems, SUM(trn_SOPs) as trn_SOPs, SUM(trn_good_governance) as trn_good_governance, SUM(trn_policies) AS trn_policies, SUM(trn_motivated_pupils) as trn_motivated_pupils, SUM(trn_research) AS trn_research, SUM(trn_ntwk_meetings) AS trn_ntwk_meetings, SUM(trn_MOU) as trn_MOU, SUM(trn_monitoring) as trn_monitoring").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
   @training = @report.first
end
def iptt
@report = FormHealthIptt.select("SUM(iptt_fp_service_providers) as iptt_fp_service_providers, SUM(iptt_active_youth) as iptt_active_youth, SUM(iptt_youth_partcipation) AS iptt_youth_partcipation, SUM(iptt_life_skills) AS iptt_life_skills, SUM(iptt_SRHR_BCC) as iptt_SRHR_BCC, SUM(iptt_leaders_reached) as iptt_leaders_reached, SUM(iptt_trained_service_providers) as iptt_trained_service_providers").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
@iptt = @report.first

end

def hiv
@report = FormHealthHiv.select("SUM(hiv_rights_holders) AS hiv_rights_holders,SUM(hiv_lobby_meetings) AS hiv_lobby_meetings,SUM(hiv_women_htc_pmtct) AS  hiv_women_htc_pmtct, SUM(hiv_budget_allocation) AS hiv_budget_allocation, SUM(hiv_rh_receiving_care) AS hiv_rh_receiving_care,SUM(hiv_women_youth_ovc) AS hiv_women_youth_ovc, SUM(hiv_reconstruction) AS hiv_reconstruction, SUM(hiv_people_htc) AS hiv_people_htc, SUM(hiv_pychosocial) AS hiv_pychosocial, SUM(hiv_cbccs_constructed) AS hiv_cbccs_constructed, SUM(hiv_cbccs_rehabilitated) as hiv_cbccs_rehabilitated, SUM(hiv_cc_established) AS hiv_cc_established, SUM(hiv_child_cbccs) AS hiv_child_cbccs, SUM(hiv_child_cc) AS hiv_child_cc, SUM(hiv_caregiver_ecd) AS hiv_caregiver_ecd, SUM(hiv_caregiver_icdp) AS hiv_caregiver_icdp, SUM(hiv_star_circle_established) AS hiv_star_circle_established,  SUM(hiv_community_star_circle) AS hiv_community_star_circle, SUM(hiv_child_eid) AS hiv_child_eid, SUM(hiv_viral_load) AS hiv_viral_load, SUM(hiv_resistance) AS hiv_resistance").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])

@hiv = @report.first
end

def reproductive_health_output_two
	@report = FormHealthReproductiveHealthOutputTwo.select("SUM(youth_clubs) AS youth_clubs, SUM(active_clubs) AS active_clubs,  SUM(star_cycle_train_m_less_10) AS star_cycle_train_m_less_10, SUM(star_cycle_train_m_10_14) AS star_cycle_train_m_10_14, SUM(star_cycle_train_m_15_20) AS star_cycle_train_m_15_20,  SUM(star_cycle_train_m_21_24) AS star_cycle_train_m_21_24, SUM(star_cycle_train_f_less_10) AS star_cycle_train_f_less_10,  SUM(star_cycle_train_f_10_14) AS star_cycle_train_f_10_14, SUM(star_cycle_train_f_15_20) AS star_cycle_train_f_15_20, SUM(star_cycle_train_f_21_24) AS star_cycle_train_f_21_24, SUM(star_cycle_groups_formed) AS star_cycle_groups_formed, SUM(life_skills_train_m_less_10) AS life_skills_train_m_less_10,  SUM(life_skills_train_m_10_14) AS life_skills_train_m_10_14, SUM(life_skills_train_m_15_20) AS life_skills_train_m_15_20, SUM(life_skills_train_m_15_20) AS life_skills_train_m_15_20, SUM(life_skills_train_m_21_24) AS life_skills_train_m_21_24, SUM(life_skills_train_f_less_10) AS life_skills_train_f_less_10, SUM(life_skills_train_f_10_14) AS life_skills_train_f_10_14, SUM(life_skills_train_f_15_20) AS life_skills_train_f_15_20, SUM(life_skills_train_f_15_20) AS life_skills_train_f_15_20, SUM(life_skills_train_f_21_24) AS life_skills_train_f_21_24, SUM(peer_edu_train_m_less_10) AS peer_edu_train_m_less_10, SUM(peer_edu_train_m_10_14) AS peer_edu_train_m_10_14, SUM(peer_edu_train_m_15_20) AS peer_edu_train_m_15_20, SUM(peer_edu_train_m_21_24) AS peer_edu_train_m_21_24, SUM(peer_edu_train_f_less_10) AS peer_edu_train_f_less_10, SUM(peer_edu_train_f_10_14) AS peer_edu_train_f_10_14, SUM(peer_edu_train_f_15_20) AS peer_edu_train_f_15_20, SUM(peer_edu_train_f_21_24) AS peer_edu_train_f_21_24, SUM(youth_centre_rehabilitated) AS youth_centre_rehabilitated, SUM(bicycles) AS bicycles, SUM(leadership) AS leadership").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
	@reproductive_health_output_two = @report.first
end
def reproductive_health_output_three
	@report = FormHealthReproductiveHealthOutputThree.select("SUM(sens_camp_key_mes_fig_1) AS sens_camp_key_mes_fig_1, SUM(sens_camp_key_mes_fig_2) AS sens_camp_key_mes_fig_2, SUM( sens_camp_key_mes_fig_3) AS  sens_camp_key_mes_fig_3, SUM(sens_camp_key_mes_fig_4) AS sens_camp_key_mes_fig_4, SUM(sens_camp_key_mes_fig_5) AS sens_camp_key_mes_fig_5, SUM(sens_camp_key_mes_fig_6) AS sens_camp_key_mes_fig_6, SUM(sens_camp_key_mes_fig_7) AS sens_camp_key_mes_fig_7, SUM(sens_camp_key_mes_fig_8) AS sens_camp_key_mes_fig_8, SUM(sens_camp_key_mes_fig_9) AS sens_camp_key_mes_fig_9,  SUM(ad_camp_key_mes_fig_1) AS ad_camp_key_mes_fig_1, SUM(ad_camp_key_mes_fig_2) AS ad_camp_key_mes_fig_2, SUM(ad_camp_key_mes_fig_3) AS ad_camp_key_mes_fig_3, SUM(ad_camp_key_mes_fig_4) AS ad_camp_key_mes_fig_4, SUM(ad_camp_key_mes_fig_5) AS ad_camp_key_mes_fig_5, SUM(ad_camp_key_mes_fig_6) AS ad_camp_key_mes_fig_6, SUM(ad_camp_key_mes_fig_7) AS ad_camp_key_mes_fig_7, SUM(ad_camp_key_mes_fig_8) AS ad_camp_key_mes_fig_8, SUM(ad_camp_key_mes_fig_9) AS ad_camp_key_mes_fig_9, SUM(ad_camp_key_mes_fig_10) AS ad_camp_key_mes_fig_10, SUM(ad_camp_key_mes_fig_11) AS ad_camp_key_mes_fig_11, SUM(ad_camp_key_mes_fig_12) AS ad_camp_key_mes_fig_12, SUM(special_event_days) AS special_event_days, SUM(management_of_youth_clubs) AS management_of_youth_clubs, SUM(iec_posters) AS iec_posters, SUM(iec_10) AS iec_10, SUM(iec_flyers) AS iec_flyers, SUM(iec_tshirts) AS iec_tshirts, SUM(iec_10121022) AS iec_10121022, SUM(jingles) AS jingles, SUM(jingles_aired) AS jingles_aired, SUM(couples) AS couples, SUM(counselors) AS counselors, SUM(parliament) AS parliament").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
	@reproductive_health_output_three = @report.first

@report2 = FormHealthReproductiveHealthOutputThree.select("sens_camp_key_mes_1, sens_camp_key_mes_2, sens_camp_key_mes_3, 
	sens_camp_key_mes_4, sens_camp_key_mes_5, sens_camp_key_mes_6, sens_camp_key_mes_7, sens_camp_key_mes_8, sens_camp_key_mes_9,
	sens_camp_channel_1, sens_camp_channel_2, sens_camp_channel_3, sens_camp_channel_4, sens_camp_channel_5, 
	sens_camp_channel_6, sens_camp_channel_7, sens_camp_channel_8, sens_camp_channel_9, ad_camp_key_mes_1,  ad_camp_key_mes_2, 
	ad_camp_key_mes_3, ad_camp_key_mes_4, ad_camp_key_mes_5, ad_camp_key_mes_6, ad_camp_key_mes_7,  ad_camp_key_mes_8, 
	ad_camp_key_mes_9, ad_camp_key_mes_10, ad_camp_key_mes_11, ad_camp_key_mes_12, ad_camp_key_channel_1, 
	ad_camp_key_channel_2, ad_camp_key_channel_3, ad_camp_key_channel_4, ad_camp_key_channel_5, ad_camp_key_channel_6, 
	ad_camp_key_channel_7, ad_camp_key_channel_8, ad_camp_key_channel_9, ad_camp_key_channel_10, ad_camp_key_channel_11, ad_camp_key_channel_12").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])  
@reproductive_health_output_three2 = @report2.last

end

def reproductive_health_output_four
        @report = FormHealthReproductiveHealthOutputFour.select("SUM(comm_dia_leaders_m) AS comm_dia_leaders_m, SUM(comm_dia_leaders_f) AS comm_dia_leaders_f, SUM(comm_dia_chiefs_m) AS comm_dia_chiefs_m,SUM(comm_dia_chiefs_f) AS comm_dia_chiefs_f, SUM(comm_dia_politicians_m) AS comm_dia_politicians_m, SUM(comm_dia_politicians_f) AS comm_dia_politicians_f, SUM(srh_leaders_m) AS srh_leaders_m, SUM(srh_leaders_f) AS srh_leaders_f, SUM(srh_chiefs_m) AS srh_chiefs_m, SUM(srh_chiefs_f) AS srh_chiefs_f, SUM(srh_politicians_m) AS  srh_politicians_m, SUM(srh_politicians_f) AS srh_politicians_f, SUM(sgbv_m) AS sgbv_m, SUM(sgbv_f) AS sgbv_f 
").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
@form_health_reproductive_health_output_four = @report.first
end
end

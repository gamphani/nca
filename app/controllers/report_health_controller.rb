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
     end
	 #redirect_to '/report_health/mnh'

  end
  def mnh
         
	 @report = FormHealthMnh.select("SUM(service_del_svd) as service_del_svd, SUM(service_del_ve) AS service_del_ve, 
	 	SUM(service_del_mart_death) as service_del_mart_death, SUM(service_del_ref_eclampsia) AS service_del_ref_eclampsia,
	 	SUM(service_del_ref_labour) as service_del_ref_labour, SUM(service_del_ref_aph) as service_del_ref_aph, 
	 	SUM(service_del_ref_cs) as service_del_ref_cs, SUM(service_del_ref_other) as service_del_ref_other,
	 	SUM(service_del_ref_breech) as service_del_ref_breech, SUM(service_del_ref_twins) AS service_del_ref_twins,
	 	SUM(nnd_fsb) AS nnd_fsb, SUM(nnd_msb) AS nnd_msb, SUM(nnd_premature) AS nnd_premature, SUM(nnd_lbw) as nnd_lbw,
	 	SUM(outreach_initial) as outreach_initial, SUM(outreach_subsequent) as outreach_subsequent, SUM(outreach_2nd) AS outreach_2nd,
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
	 	SUM(sup_zone) AS sup_zone").where("start_date >= ? AND end_date <= ? AND facility = ?", params[:start_date], [:end_date], params[:facility])



@mnh = @report.first
  end
end

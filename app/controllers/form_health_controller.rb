class FormHealthController < ApplicationController
  def index
  end
  def create
     if params.has_key?("form_health_mnh")
      @form = FormHealthMnh.new(params[:form_health_mnh].permit(:start_date, :end_date, :facility, :service_del_svd, :service_del_ve, :service_del_mart_death, :service_del_ref_eclampsia, :service_del_ref_labour, :service_del_ref_aph, :service_del_ref_cs, :service_del_ref_other, :service_del_ref_breech, :service_del_ref_twins, :neonates_male, :neonates_female, :nnd_male, :nnd_female, :nnd_ref, :nnd_fsb, :nnd_msb, :nnd_premature, :nnd_lbw, :outreach_preg_mother, :outreach_initial, :outreach_subsequent, :outreach_2nd, :outreach_3rd, :outreach_4th, :outreach_male, :outreach_underfive_initial, :outreach_underfive_subsequent, :outreach_female, :mobilization_men, :slas, :facility_planning, :inf_prev_male, :inf_prev_female, :exl_bf_male, :exl_bf_female, :hac_train_male, :hac_train_female, :menu_male, :menu_female, :nutri_male, :nutri_female, :tpt_comm_male, :tpt_comm_female, :sf_mothood_male, :sf_mothood_female, :hac_male, :hac_female, :cluster_male, :cluster_female, :dec_male, :dec_female, :skilled_doc, :skilled_cli, :skilled_nur, :support_hsa, :support_PA, :support_HCW, :support_guard, :support_drv, :maintenance_veh, :maintenance_mcycle, :maintenance_comp, :maintenance_boat, :maintenance_rad, :water_run, :water_borehole, :water_elec, :water_solar, :water_torch, :demo_garden, :hearth, :preg_shelter, :sup_DHO, :sup_coord, :sup_focal, :sup_NCA, :sup_zone))
 @form.save
     end

     redirect_to '/form_health/index'
  end
  def mnh
  	@facilities = Facility.all
  end

end

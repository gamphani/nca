class FormGenderController < ApplicationController
  def index
  end
  def create
     if params.has_key?("form_gender_trafficking")
      @form = FormGenderTrafficking.new(params[:form_gender_trafficking].permit(:start_date, :end_date, :trfk_cases_reported, :trfk_cases_resolved, :trfk_percent_reduction, :trfk_incorporation_in_church, :trfk_outreach, :trfk_mobile_clinic, :trfk_awareness, :trfk_informal_justice, :trfk_other_service_providers, :trfk_rescued, :trfk_court_rehabilitated, :trfk_network_initiatives, :trfk_interagency_meet, :trfk_issues_raised))
 @form.save
     elsif params.has_key?("form_gender_theology")
        @form = FormGenderTheology.new(params[:form_gender_theology].permit(:start_date, :end_date, :theo_training_manuals,  :theo_f_and_m_teachers,  :theo_context_text,  :theo_counselors,   :theo_code_conduct,  :theo_code_conduct_emp,  :theo_diaconal_strategies,   :theo_develop_advocacy_strategy,   :theo_using_advocacy_strategy,  :theo_monit_visit,  :theo_reports_produced, :theo_church_leader_tot, :theo_church_joint_declaration))
        @form.save
     end

     redirect_to '/form_gender/index'
  end

end

class ReportGenderController < ApplicationController
  def index
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
     end
         #raise params.inspect
   @report = FormGenderTrafficking.all.where("start_date >= ? AND end_date <= ? ", params[:report][:start_date], params[:report][:end_date]).each{}
   if params[:report][:report_type] == "1"
    redirect_to :action => 'trafficking', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
   elsif params[:report][:report_type] == "2"
    redirect_to :action => 'theology', :start_date => params[:report][:start_date], :end_date => params[:report][:end_date]
     end
   #redirect_to '/report_health/mnh'

  end
 
  def trafficking
      @start_date = params[:start_date]
      @end_date = params[:end_date]
     # raise paramas.inspect

      @report = FormGenderTrafficking.select("SUM(trfk_cases_reported) AS trfk_cases_reported, SUM(trfk_cases_resolved) AS trfk_cases_resolved, SUM(trfk_percent_reduction) AS trfk_percent_reduction, SUM(trfk_incorporation_in_church) AS trfk_incorporation_in_church, SUM(trfk_outreach) AS trfk_outreach, SUM(trfk_mobile_clinic) AS trfk_mobile_clinic, SUM(trfk_awareness) as trfk_awareness, SUM(trfk_informal_justice) as trfk_informal_justice, SUM(trfk_other_service_providers) as trfk_other_service_providers, SUM(trfk_rescued) as trfk_rescued, SUM(trfk_court_rehabilitated) as trfk_court_rehabilitated, SUM(trfk_network_initiatives) AS trfk_network_initiatives, SUM(trfk_interagency_meet) as trfk_interagency_meet, SUM(trfk_issues_raised) as trfk_issues_raised").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
    @trafficking = @report.first
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'report_gender/trafficking.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end

  def theology
   @report = FormGenderTheology.select("SUM(theo_training_manuals) AS theo_training_manuals,  SUM(theo_f_and_m_teachers) as theo_f_and_m_teachers,  SUM(theo_context_text) AS theo_context_text,  SUM(theo_counselors) AS theo_counselors,  SUM(theo_code_conduct) AS theo_code_conduct,  SUM(theo_code_conduct_emp) as theo_code_conduct_emp,  SUM(theo_diaconal_strategies) as theo_diaconal_strategies,  SUM(theo_develop_advocacy_strategy) as theo_develop_advocacy_strategy,  SUM(theo_using_advocacy_strategy) as theo_using_advocacy_strategy,  SUM(theo_monit_visit) as theo_monit_visit,  SUM(theo_reports_produced) as theo_reports_produced, SUM(theo_church_leader_tot) AS theo_church_leader_tot").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
   @theology = @report.first
   @report2 = FormGenderTheology.select("theo_church_joint_declaration").where("start_date >= ? AND end_date <= ?", params[:start_date], params[:end_date])
   @theology2 = @report2.last

  end
end

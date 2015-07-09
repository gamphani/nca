class ReportGenderController < ApplicationController
  def index
  end

 def generate
        raise params.inspect
   
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
     end
   #redirect_to '/report_health/mnh'

  end
 
  def trafficking
      @report = FormGenderTrafficking.select("SUM(trfk_cases_reported) AS trfk_cases_reported, SUM(trfk_percent_reduction) AS trfk_percent_reduction, SUM(trfk_incorporation_in_church) AS trfk_incorporation_in_church, SUM(trfk_outreach) AS trfk_outreach, SUM(trfk_mobile_clinic) AS trfk_mobile_clinic, SUM(trfk_awareness) as trfk_awareness, SUM(trfk_informal_justice) as trfk_informal_justice, SUM(trfk_other_service_providers) as trfk_other_service_providers, SUM(trfk_rescued) as trfk_rescued, SUM(trfk_court_rehabilitated) as trfk_court_rehabilitated, SUM(trfk_network_initiatives) AS trfk_network_initiatives, SUM(trfk_interagency_meet) as trfk_interagency_meet, SUM(trfk_issues_raised) as trfk_issues_raised").where("start_date >= ? AND end_date <= ?", params[:start_date], [:end_date])
  end

  def theology
  end
end
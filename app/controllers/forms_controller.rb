class FormsController < ApplicationController
  def new
  end
  def create
     @form = Form.new(params[:forms].permit(:program, :start_date, :end_date, :cases_reported, :resolved_law, :percentage, :churches,  :outreach, :clinics, :campaigns, :resolved_informal))
     
     @form.save
     redirect_to '/forms/new'
  end
end

class User::TreatmentsController < ApplicationController
  def index
    @patients = Patient.new
    @categorys = Category.all
    
  end
  
  def show
    @treatment = Treatment.find(params[:id])
  end

end

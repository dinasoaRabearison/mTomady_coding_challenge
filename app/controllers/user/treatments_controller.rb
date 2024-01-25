class User::TreatmentsController < ApplicationController
  def index
    @categorys = Category.all
    @treatments = Treatment.all    
  end
  
  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.find(params[:id])
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patientName: treatment_params[:patientName])
    @treatment = Treatment.new(id: treatment_params[:id], treatmentName: treatment_params[:treatmentName])
    if(!Patient.find_by(patientName: @patient.patientName))
      @patient.save
    end
    
    @patient = Patient.find_by(patientName: @patient.patientName)

    @Selection = Selection.new(patient_id: @patient.id, treatment_id: @treatment.id)
    @Selection.save
    redirect_to action: "show", id: @treatment.id
    
  end

  private
    def treatment_params
      params.require(:treatment).permit(:id,:treatmentName,:patientName)
    end
end

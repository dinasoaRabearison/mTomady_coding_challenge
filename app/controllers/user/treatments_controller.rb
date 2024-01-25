class User::TreatmentsController < ApplicationController
  def index
    @categorys = Category.all
    @treatments = Treatment.all
    @locale = extract_locale_from_accept_language_header
    @translations = Translation.all
  end
  
  def show
    @treatment = Treatment.find(params[:id])
    @locale = extract_locale_from_accept_language_header
    @translations = Translation.all
  end

  def new
    @treatment = Treatment.find(params[:id])
    @patient = Patient.new
    @locale = extract_locale_from_accept_language_header
    @translations = Translation.all
  end

  def create
    @patient = Patient.new(patientName: treatment_params[:patientName])
    @treatment = Treatment.find(treatment_params[:id])
    if(!Patient.find_by(patientName: @patient.patientName))
      @patient.save
    end
    
    @patient = Patient.find_by(patientName: @patient.patientName)

    @Selection = Selection.new(patient_id: @patient.id, treatment_id: @treatment.id)
    @Selection.save
    redirect_to  user_patient_url(@patient.id)
    
  end

  

  private
    def treatment_params
      params.require(:treatment).permit(:id,:treatmentName,:patientName)
    end

    

end

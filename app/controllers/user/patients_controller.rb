class User::PatientsController < ApplicationController
  def index
    @categorys = Category.all
    @patients = Patient.new
  end

  def show
    @Patients = Patient.find(params[:id])
    @locale = extract_locale_from_accept_language_header
    @translations = Translation.all
  end

  def create
    @patient = Patient.find_by(patientName: patient_params[:patientName])
    if(@patient)
      redirect_to user_patient_url(@patient.id)
    else
      redirect_to user_treatments_url()
    end

  end

  private
    def patient_params
      params.require(:patient).permit(:patientName)
    end
  
end

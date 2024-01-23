class User::PatientsController < ApplicationController
  def index
    @categorys = Category.all
    @patients = Patient.new
  end

  def show
    @Patients = Patient.find(params[:id])
  end

  def new
  end

  def create
    @patients = Patient.new(patient_params)
    if(!Patient.find_by(patientName: @patients.patientName))
      @patients.save
    else
      @patients = Patient.find_by(patientName: @patients.patientName)
    end
    @treatment = Treatment.new(selections_params)
    @patient = Patient.find_by(patientName: @patients.patientName)
    @Selection = Selection.new(patient_id: @patient.id, treatment_id: @treatment.id)
    if @Selection.save
      redirect_to action: "show", id: @patient.id
    else
      render :index, status: :unprocessable_entity
    end

  end

  private
    def patient_params
      params.require(:patient).permit(:patientName)
    end

    def selections_params
      params.require(:patient).permit(:id)
    end

end

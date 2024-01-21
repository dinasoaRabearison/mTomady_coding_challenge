class User::PatientsController < ApplicationController
  def index
    @categorys = Category.all
    @patients = Patient.new
  end

  def show
    @Patient = Patient.find(params[:id])
  end

  def new
  end

  def create
    @patients = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render :index, status: :unprocessable_entity
    end

  end

  private
    def patient_params
      params.require(:patient).permit(:patientName, :treatment_id)
    end

end

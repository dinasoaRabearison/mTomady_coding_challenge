class Admin::TreatmentsController < ApplicationController
  @myAdmin = Administrator.find(1)
  http_basic_authenticate_with name: @myAdmin.adminName, password: @myAdmin.adminPassword

  def index
    @categorys = Category.all
    @treatments = Treatment.all
  end
  
  def show
    @treatment = Treatment.find(params[:id])
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end
end

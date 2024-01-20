class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end
  
  def show
    @treatment = Treatment.find(params[:id])
  end
end

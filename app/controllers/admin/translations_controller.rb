class Admin::TranslationsController < ApplicationController
  def index

  end

  def new
    @translations = Translation.new
    @treatment = Treatment.find(params[:id])
  end

  def create
    @translations = Translation.new(translation_params)
    @treatment = Treatment.find(@translations.treatment_id)
    if (!Translation.find_by(translationLanguage: @translations.translationLanguage, treatment_id: @translations.treatment_id))
      if(@translations.save)
        @newTranslation = Translation.find_by(translationLanguage: @translations.translationLanguage, treatment_id: @translations.treatment_id)
        redirect_to controller: "admin/treatments", action: "show", id: @treatment.id
      else
        render :new, id: @treatment.id, status: :unprocessable_entity
      end
    else
      @toUpdateTranslation = Translation.find_by(translationLanguage: @translations.translationLanguage, treatment_id: @translations.treatment_id)
      redirect_to action: "edit", id: @toUpdateTranslation.id
    end
  end

  def edit
    @translations = Translation.find(params[:id])
    @treatment = Treatment.find(@translations.treatment_id)
  end

  def update
    @translations = Translation.find(params[:id])
    @treatment = Treatment.find(@translations.treatment_id)
    if(@translations.update(translation_params))
      @updatedTranslation = Translation.find(params[:id])
      redirect_to controller: "admin/treatments", action: "show", id: @treatment.id
    else
      render :edit, id: @treatment.id, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
    def translation_params
      params.require(:translation).permit(:translationLanguage, :translationValue, :treatment_id)
    end
end

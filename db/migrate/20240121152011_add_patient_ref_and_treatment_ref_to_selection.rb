class AddPatientRefAndTreatmentRefToSelection < ActiveRecord::Migration[7.1]
  def change
    add_reference :selections, :patient, null: false, foreign_key: true
    add_reference :selections, :treatment, null: false, foreign_key: true
  end
end

class CreateTreatments < ActiveRecord::Migration[7.1]
  def change
    create_table :treatment do |t|
      t.string :treatmentName

      t.timestamps
    end
  end
end

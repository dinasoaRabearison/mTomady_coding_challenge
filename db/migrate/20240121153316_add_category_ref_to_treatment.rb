class AddCategoryRefToTreatment < ActiveRecord::Migration[7.1]
  def change
    add_reference :treatments, :category, null: false, foreign_key: true
  end
end

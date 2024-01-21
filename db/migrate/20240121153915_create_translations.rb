class CreateTranslations < ActiveRecord::Migration[7.1]
  def change
    create_table :translations do |t|
      t.string :translationLanguage
      t.string :translationValue
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

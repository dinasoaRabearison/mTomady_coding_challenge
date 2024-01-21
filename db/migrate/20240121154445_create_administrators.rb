class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.string :adminName
      t.string :adminPassword

      t.timestamps
    end
  end
end

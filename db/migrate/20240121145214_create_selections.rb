class CreateSelections < ActiveRecord::Migration[7.1]
  def change
    create_table :selections do |t|

      t.timestamps
    end
  end
end

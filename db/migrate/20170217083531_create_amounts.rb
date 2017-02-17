class CreateAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :amounts do |t|
      t.integer :size
      t.string :unit
      t.string :description

      t.timestamps
    end
  end
end

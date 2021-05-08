class CreateCostumesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.string :title
      t.string :style
      t.string :reference_sheet
      t.integer :globaluser_id

      t.timestamps
    end
  end
end

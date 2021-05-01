class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.string :title
      t.string :type
      t.string :reference_sheet

      t.timestamps
    end
  end
end

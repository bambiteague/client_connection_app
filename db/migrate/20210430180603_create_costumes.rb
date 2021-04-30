class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end

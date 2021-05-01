class CreateGlobalusercostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :globalusercostumes do |t|
      t.integer :costume_id
      t.integer :globaluser_id

      t.timestamps
    end
  end
end

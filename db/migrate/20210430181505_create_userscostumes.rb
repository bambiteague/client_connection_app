class CreateUserscostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :userscostumes do |t|
      t.integer :costume_id
      t.integer :user_id

      t.timestamps
    end
  end
end

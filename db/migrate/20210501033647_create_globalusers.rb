class CreateGlobalusers < ActiveRecord::Migration[6.1]
  def change
    create_table :globalusers do |t|
      t.boolean :client
      t.boolean :designer
      t.text :email
      t.string :first_name
      t.string :last_name
      t.string :username

      t.timestamps
    end
  end
end

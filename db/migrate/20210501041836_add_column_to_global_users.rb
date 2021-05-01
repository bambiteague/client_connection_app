class AddColumnToGlobalUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :globalusers, :password, :string
  end
end

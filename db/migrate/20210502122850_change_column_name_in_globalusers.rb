class ChangeColumnNameInGlobalusers < ActiveRecord::Migration[6.1]
  def change
    remove_column :globalusers, :password, :string
    add_column :globalusers, :password_digest, :string
  end
end

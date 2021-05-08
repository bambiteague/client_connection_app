class EditColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :commissions, :submitted_at, :datetime
    add_column :commissions, :costume_status, :string
  end
end

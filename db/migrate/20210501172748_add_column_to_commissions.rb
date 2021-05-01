class AddColumnToCommissions < ActiveRecord::Migration[6.1]
  def change
    add_column :commissions, :submitted_at, :datetime
  end
end

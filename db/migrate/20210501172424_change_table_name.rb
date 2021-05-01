class ChangeTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :globalusercostumes, :commissions
  end
end

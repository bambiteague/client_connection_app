class AddUidAndProviderToGlobaluser < ActiveRecord::Migration[6.1]
  def change
    add_column :globalusers, :uid, :string
    add_column :globalusers, :provider, :string
  end
end

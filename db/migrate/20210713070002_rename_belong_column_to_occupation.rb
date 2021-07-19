class RenameBelongColumnToOccupation < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :belong, :occupation
  end
end

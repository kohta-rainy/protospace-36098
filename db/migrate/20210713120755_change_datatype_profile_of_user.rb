class ChangeDatatypeProfileOfUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :profile, :text
    change_column :users, :position,:text
    change_column :users, :occupation,:text

  end
end

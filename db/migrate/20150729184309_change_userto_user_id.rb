class ChangeUsertoUserId < ActiveRecord::Migration
  def change
    remove_column :marks, :user, :string
    remove_column :marks, :user_id, :string
    add_column :marks, :user_id, :integer
  end
end

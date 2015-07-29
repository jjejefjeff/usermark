class AddUsertoMark < ActiveRecord::Migration
  def change
    add_column :marks, :user, :string
  end
end

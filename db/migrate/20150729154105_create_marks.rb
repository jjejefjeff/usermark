class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end

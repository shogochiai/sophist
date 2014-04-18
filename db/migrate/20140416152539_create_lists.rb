class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

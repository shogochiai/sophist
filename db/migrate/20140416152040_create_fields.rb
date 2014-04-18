class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :title
      t.string :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

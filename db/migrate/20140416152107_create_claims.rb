class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

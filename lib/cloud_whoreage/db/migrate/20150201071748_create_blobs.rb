class CreateBlobs < ActiveRecord::Migration
  def change
    create_table :blobs do |t|
      t.belongs_to :app, index: true
      t.belongs_to :user, index: true
      t.string :key
      t.binary :data
      t.integer :status

      t.timestamps null: false
    end
    add_index :blobs, [:app_id, :user_id, :key], unique: true
    add_foreign_key :blobs, :apps
    add_foreign_key :blobs, :users
  end
end

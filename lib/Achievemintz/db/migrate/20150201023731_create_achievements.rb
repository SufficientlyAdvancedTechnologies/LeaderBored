class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.belongs_to :created_by, index: true
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end

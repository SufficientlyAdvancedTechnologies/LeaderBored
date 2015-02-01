class CreateAchievementUnlocks < ActiveRecord::Migration
  def change
    create_table :achievement_unlocks do |t|
      t.belongs_to :achievement, index: true
      t.belongs_to :player, index: true
      t.integer :progression
      t.integer :status

      t.timestamps null: false
    end
    add_index :achievement_unlocks, [:achievement_id, :player_id], unique: true
  end
end

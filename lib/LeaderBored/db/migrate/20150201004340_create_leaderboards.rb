class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.belongs_to :created_by, index: true
      t.timestamp :created_at, index: true
      t.string :name
      t.text :description
      t.enum :status

      t.timestamps null: false
    end
    #add_foreign_key :leaderboards, :created_bies
  end
end

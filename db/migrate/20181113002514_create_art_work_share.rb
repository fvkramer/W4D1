class CreateArtWorkShare < ActiveRecord::Migration[5.2]
  def change
    create_table :art_work_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false

    end
    add_index :art_work_shares, [:viewer_id, :artwork_id], unique: true
    add_index :art_work_shares, :artwork_id
    add_index :art_work_shares, :viewer_id
  end
end

class CreateGraphics < ActiveRecord::Migration[5.0]
  def change
    create_table :graphics do |t|
      t.integer :review_id
      t.string :image
      t.timestamps
    end
  end
end

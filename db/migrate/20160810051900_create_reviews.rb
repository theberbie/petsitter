class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :message
      t.string :rating 
      t.integer :user_id
      t.integer :ad_id

      t.timestamps
    end

    add_index :reviews, [:user_id, :ad_id]
    add_index :reviews, :ad_id
  end
end

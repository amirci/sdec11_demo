class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.text :comment
      t.references :movie

      t.timestamps
    end
    add_index :reviews, :movie_id
  end
end

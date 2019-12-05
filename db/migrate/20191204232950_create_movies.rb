class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.references :genre, foreign_key: true
      t.integer :number_in_stock
      t.float :daily_rental_rate

      t.timestamps
    end
  end
end

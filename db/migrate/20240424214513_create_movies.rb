class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :price
      t.date :release

      t.timestamps
    end
  end
end

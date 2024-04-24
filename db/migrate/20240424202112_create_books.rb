class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price
      t.date :release

      t.timestamps
    end
  end
end

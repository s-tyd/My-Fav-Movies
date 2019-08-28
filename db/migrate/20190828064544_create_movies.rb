class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rate
      t.integer :year
      t.text :content

      t.timestamps
    end
  end
end

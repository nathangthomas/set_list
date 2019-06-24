class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :playcount
      t.integer :length

      t.timestamps
      #gives you an update and created_at attribute 
    end
  end
end

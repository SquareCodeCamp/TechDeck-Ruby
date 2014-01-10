class AddDeckAndCard < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.timestamps
    end

    create_table :cards do |t|
      t.integer :deck_id
      t.string :name
      t.string :image_url
      t.string :bio
      t.string :wiki_link
      t.timestamps
    end
  end
end

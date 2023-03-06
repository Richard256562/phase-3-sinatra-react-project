class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :name
      t.string :meme_id
    end
  end
end

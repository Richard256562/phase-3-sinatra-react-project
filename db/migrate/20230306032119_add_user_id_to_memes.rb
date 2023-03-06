class AddUserIdToMemes < ActiveRecord::Migration[6.1]
  def change
    add_reference :memes, :user, null: false, foreign_key: true
  end
end

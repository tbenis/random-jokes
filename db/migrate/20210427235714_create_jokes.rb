class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|

      t.string :title
      t.string :setup
      t.string :punchline
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

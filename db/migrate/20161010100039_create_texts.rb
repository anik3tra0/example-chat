class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :content
      t.integer :recepient_id
      t.integer :sender_id

      t.timestamps null: false
    end
  end
end

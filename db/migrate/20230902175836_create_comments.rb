class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :integer
      t.string :event_id
      t.text :text_area

      t.timestamps
    end
  end
end

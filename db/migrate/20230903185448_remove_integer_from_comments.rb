class RemoveIntegerFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :user_id, :string
    remove_column :comments, :event_id, :string
    remove_column :comments, :integer,:string
  end
end

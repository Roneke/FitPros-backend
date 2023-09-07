class AddAddressToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :address, :string
    add_column :events, :name, :string
  end
end

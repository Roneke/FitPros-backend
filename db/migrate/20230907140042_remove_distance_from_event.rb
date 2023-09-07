class RemoveDistanceFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :distance,:integer
    remove_column :events, :duration,:float
  end
end

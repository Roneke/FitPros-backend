class RemoveWeeklyMileGoalFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :weekly_mile_goal, :integer
  end
end

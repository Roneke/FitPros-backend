class CreateIndustryUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :industry_users do |t|
      t.integer :user_id
      t.integer :industry_id

      t.timestamps
    end
  end
end

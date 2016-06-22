class CreateReward2s < ActiveRecord::Migration
  def change
    create_table :reward2s do |t|
      t.string :title
      t.string :desctiption
      t.float :amount
      t.integer :project_id

      t.timestamps null: false
    end
  end
end

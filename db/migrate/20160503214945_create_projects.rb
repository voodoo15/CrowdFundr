class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_description
      t.string :long_description
      t.string :risk_description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end

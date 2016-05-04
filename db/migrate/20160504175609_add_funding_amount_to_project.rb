class AddFundingAmountToProject < ActiveRecord::Migration
  def change
    add_column :projects, :funding_amount, :float
  end
end

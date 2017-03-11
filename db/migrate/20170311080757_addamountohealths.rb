class Addamountohealths < ActiveRecord::Migration[5.0]
  def change
  	add_column :healths, :required_amount, :integer
  	add_column :healths, :donated_amount, :integer
  end
end

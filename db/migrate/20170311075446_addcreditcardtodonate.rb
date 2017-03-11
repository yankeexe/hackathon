class Addcreditcardtodonate < ActiveRecord::Migration[5.0]
  def change
  	add_column :donates, :creditcard, :string
  end
end

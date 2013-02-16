class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
    	t.string :item
    	t.integer :price
    	t.integer :profit
    	t.date :date
      t.timestamps
    end
  end
end

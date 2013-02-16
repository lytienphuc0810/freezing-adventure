class Record < ActiveRecord::Base
	attr_accessible :item, :price, :profit, :date
# 
	validates_presence_of :item, :price, :profit, :date
	
	ATTR = ["item", "price", "profit"]
	SHOW_ATTR = ["item", "price", "profit", "date"]
	MANIFEST = ["item", "price", "profit"]

	def self.nth_latest_records n
		Record.find_by_sql(
			"SELECT * FROM records 
				WHERE date = (SELECT date FROM records ORDER BY created_at DESC LIMIT 1 OFFSET #{n})
				ORDER BY created_at DESC"
		)
	end

	def previous_records
	end

	def next_records
	end
end

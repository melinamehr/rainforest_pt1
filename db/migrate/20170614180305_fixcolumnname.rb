class Fixcolumnname < ActiveRecord::Migration[5.1]
    def self.up
        rename_column :products, :princeincents, :price_in_cents
      end

end

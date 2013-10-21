class CreateHeirships < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.string :item
      t.string :property
      t.integer :money
      t.timestamps
    end

    create_table :people do |t|
      t.string :name
      t.timestamps
    end

    create_table :heirships do |t|
      t.datetime :transfer_date
      t.belongs_to :person
      t.belongs_to :liability
      t.timestamps
    end
  end
end

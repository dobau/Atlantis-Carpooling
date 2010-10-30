class CreateRides < ActiveRecord::Migration
  def self.up
    create_table :rides do |t|
      t.string :destiny
      t.timestamp :date
      t.integer :emptyplaces
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rides
  end
end

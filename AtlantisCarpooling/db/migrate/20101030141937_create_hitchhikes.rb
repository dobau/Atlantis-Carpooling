class CreateHitchhikes < ActiveRecord::Migration
  def self.up
    create_table :hitchhikes do |t|
      t.integer :ride_id
      t.integer :user_id
      t.boolean :accepted
      t.float :contribution

      t.timestamps
    end
  end

  def self.down
    drop_table :hitchhikes
  end
end

class CreateBouncers < ActiveRecord::Migration
  def self.up
    create_table :bouncers do |t|
      t.string :title
      t.string :url
      t.string :chars
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bouncers
  end
end

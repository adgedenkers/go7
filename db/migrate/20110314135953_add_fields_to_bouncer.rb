class AddFieldsToBouncer < ActiveRecord::Migration
  def self.up
    add_column :bouncers, :count, :integer
    add_column :bouncers, :last_used, :datetime
  end

  def self.down
    remove_column :bouncers, :last_used
    remove_column :bouncers, :count
  end
end

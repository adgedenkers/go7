class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
  end
end

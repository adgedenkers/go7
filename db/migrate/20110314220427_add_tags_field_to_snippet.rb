class AddTagsFieldToSnippet < ActiveRecord::Migration
  def self.up
    add_column :snippets, :tags, :string
  end

  def self.down
    remove_column :snippets, :tags
  end
end

class AddFieldsToSnippet < ActiveRecord::Migration
  def self.up
    add_column :snippets, :title, :string
    add_column :snippets, :count, :integer
    add_column :snippets, :last_used, :datetime
  end

  def self.down
    remove_column :snippets, :last_used
    remove_column :snippets, :count
    remove_column :snippets, :title
  end
end

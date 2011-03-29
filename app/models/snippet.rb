class Snippet < ActiveRecord::Base
  belongs_to :user
  attr_accessible(:content, :user_id, :title, :count, :last_used)
  
  # Find the top ten urls
  def self.find_top_snippets
    find(:all, :order => "count DESC", :limit => 10)
  end
  
  # Update hit count when the snippet is visited
  def visited!
    self.count = self.count.to_i + 1
    self.last_used = Time.now
    save!
  end
  
  # Validations
  validates :content,   :presence   => true
  #validates :title,     :presence   => true
  
end

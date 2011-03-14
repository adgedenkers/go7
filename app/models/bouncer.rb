class Bouncer < ActiveRecord::Base
  belongs_to :user
  attr_accessible(:url, :chars, :user_id, :title, :count, :last_used)
  
  # Find the top ten urls
  def self.find_top_urls
    find(:all, :order => "count DESC", :limit => 10)
  end
  
  # Update hit count when the short url is visited
  def visited!
    self.count = self.count.to_i + 1
    self.last_used = Time.now
    save!
  end
  
  # Validations
  validates :url,   :presence   => true
  validates :chars, :presence   => true,
                    :uniqueness => { :case_sensitive => true }
  
end

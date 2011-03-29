class Bouncer < ActiveRecord::Base
  
  CHARS_LENGTH = 5
  
  belongs_to :user
  attr_accessible(:url, :chars, :user_id, :title, :count, :last_used)
  #before_create :generate_chars
  
  # Find the top ten urls
  def self.find_top_urls
    find(:all, :order => "count DESC", :limit => 10)
  end
  
  def self.find_by_chars( test )
    first( :conditions => { :chars => test } )
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
  #validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]/ix, :on => :save, :message => 'needs to have http(s):// in front of it', :if => Proc.new { |p| p.website_url? }
  
  def self.get_random_string
    str = random_string(5)
    if Bouncer.find_by_chars(str).nil?
      return str
    else
      get_random_string
    end
  end
  
  def self.random_string( len = 5 )
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    chars.shuffle[1..len].join
  end
  
  private
                    

end

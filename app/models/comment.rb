class Comment < ActiveRecord::Base
  belongs_to :profile

  has_many :counters
  has_many :addresses, :through => :counters

  accepts_nested_attributes_for :counters

  attr_accessible :author, :comment

  def count
    up = Counter.where( :comment_id => self.id, :direction => "up" ).length
    down = Counter.where( :comment_id => self.id, :direction => "down").length
    "#{up} up, #{down} down"
  end

  def count_sum
    up = Counter.where( :comment_id => self.id, :direction => "up" ).length
    down = Counter.where( :comment_id => self.id, :direction => "down").length
    up = up * 1
    down = (down * 2) * -1
    up + down
  end

end
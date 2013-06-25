class Comment < ActiveRecord::Base
  belongs_to :profile

  has_many :counters
  has_many :addresses, :through => :counters

  accepts_nested_attributes_for :counters

  attr_accessible :author, :comment

  def count
    up = Counter.where( :comment_id => self.id, :direction => "up" ).length
    down = Counter.where( :comment_id => self.id, :direction => "down").length

    if up == 0
      "#{down} down"
    elsif down == 0
      "#{up} up"
    else
      "#{up} up, #{down} down"
    end
  end

  def count_sum
    up = Counter.where( :comment_id => self.id, :direction => "up" ).length
    down = Counter.where( :comment_id => self.id, :direction => "down").length
    randup = rand(30...42)
    randdn = rand(42...59)
    up = up * randup
    down = (down * randdn) * -1
    count = up + down
  end

end
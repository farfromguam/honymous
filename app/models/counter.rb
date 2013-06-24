class Counter < ActiveRecord::Base
  belongs_to :address
  belongs_to :comments

  accepts_nested_attributes_for :address

  attr_accessible :comment_id, :direction, :address_attributes

  # custom validation method
  validate :ip_has_vote?

  def ip_has_vote?
    if Counter.exists?( :comment_id => self.comment_id, :address_id => self.address_id )
      errors[:base] << "Hey Bro, You cant vote twice."
    end
  end

end

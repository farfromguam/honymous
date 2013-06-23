class Counter < ActiveRecord::Base
  belongs_to :address
  belongs_to :comments

  attr_accessible :comment_id, :direction
end

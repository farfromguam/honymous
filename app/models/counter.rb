class Counter < ActiveRecord::Base
  belongs_to :address
  belongs_to :comments
end

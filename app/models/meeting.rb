class Meeting < ActiveRecord::Base
  has_many :reservations
end

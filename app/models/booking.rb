class Booking < ActiveRecord::Base
  belongs_to :flat
  belongs_to :booker, class_name: "User"
end

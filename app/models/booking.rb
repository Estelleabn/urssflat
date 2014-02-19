class Booking < ActiveRecord::Base
  belongs_to :flat
  belongs_to :booker, class_name: "User"

  def total_days
  	(self.end_date - self.start_date)/3600/24
  end

  def total_price
  	self.flat.day_price * total_days
  end

end

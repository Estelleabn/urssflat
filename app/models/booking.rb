class Booking < ActiveRecord::Base
  belongs_to :flat
  belongs_to :booker, class_name: "User"
  validates :start_date, :end_date, presence: true
  validate :start_date_before_end_date?
  def total_days
  	(self.end_date - self.start_date)/3600/24
  end

  def total_price
  	self.flat.day_price * total_days
  end

  def start_date_before_end_date?
  	if self.end_date < self.start_date
  		errors.add(:end_date, "can't be in the past")
  	end
  end

end

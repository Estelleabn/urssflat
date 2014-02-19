class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :flats, foreign_key: "owner_id"
  has_many :bookings, foreign_key: "booker_id"
  has_many :booked_flats, through: :bookings, source: :flat

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :full_name, presence: true
  validates :telephone, numericality: { only_integer: true }, length: { is: 10 }
end

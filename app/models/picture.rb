class Picture < ActiveRecord::Base
	belongs_to :flat
	has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

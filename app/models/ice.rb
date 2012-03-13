# == Schema Information
#
# Table name: ices
#
#  id         :integer         not null, primary key
#  topname    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Ice < ActiveRecord::Base

	# These and only these are accessible externally
	attr_accessible :topname

	validates :topname,
				presence: true,
				length: { maximum: 140 }


end

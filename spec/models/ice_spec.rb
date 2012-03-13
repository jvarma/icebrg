# == Schema Information
#
# Table name: ices
#
#  id         :integer         not null, primary key
#  topname    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Ice do

  before {
  	@ice = Ice.new(topname: "There's more to it than meets the eye!")
  }

  subject {
  	@ice
  }

  it {
  	should respond_to(:topname)
  }

  describe "when topname is empty" do

  	before {
  		@ice.topname = " "
  	}

  	it {
  		should_not be_valid
  	}

  end

  describe "when topname is too long" do

  	before {
  		@ice.topname = "a" * 141
  	}

  	it {
  		should_not be_valid
  	}
  	
  end

end

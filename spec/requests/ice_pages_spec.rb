require 'spec_helper'

describe "Ice Pages" do

	subject {
		page
	}

	describe "new ice page" do

		before {
			visit newice_path
		}

		it {
			should have_selector('title', text: full_title('new ice'))
		}

	end
end

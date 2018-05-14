require 'rails_helper'
require 'devise'


RSpec.describe "static_pages/home.html.erb", type: :view do
	it "asks you to sign in if you are not signed in" do
		render
		expect(rendered).to have_link 'rentre dans le cercle'
	end

end
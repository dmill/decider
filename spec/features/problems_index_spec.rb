require 'spec_helper'

feature "index page" do
	scenario "user clicks a problem link" do
		visit root_path
		click_link 'problem_5'
		expect(current_path).to eq(new_question_path)
	end
	scenario "user clicks New Problem button"
end
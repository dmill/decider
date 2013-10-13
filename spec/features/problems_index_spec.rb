require 'spec_helper'

feature "index page" do
	scenario "user clicks a problem link" do
		FactoryGirl.create(:problem)
		test_problem = Problem.first
		visit root_path
		click_link "#{test_problem.text}"
		expect(current_path).to eq(problem_path(Problem.first))
	end
	scenario "user clicks New Problem button"
end
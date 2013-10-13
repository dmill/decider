require 'spec_helper'

feature "index page" do
	before(:each) do
		@test_problem = FactoryGirl.create(:problem)
	end
	scenario "user clicks a problem link" do
		visit root_path
		click_link "#{@test_problem.text}"
		expect(current_path).to eq(problem_path(Problem.first))
	end
	scenario "user clicks New Problem button" do
		visit root_path
		click_link "New Problem"
		expect(current_path).to eq(new_problem_path)
	end
end
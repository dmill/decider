require 'spec_helper'

feature 'add new problem' do
	scenario 'submission of new problem form' do
		visit new_problem_path(FactoryGirl.create(:problem))
		expect {
			fill_in 'problem_text', with: problem.text
			click_on 'Submit'
		}.to change(Problem, :count).by(1)
	end
end
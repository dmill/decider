require 'spec_helper'

describe ProblemsController do
	let(:valid_params) { {:problem => FactoryGirl.attributes_for(:problem)} }
	describe "GET problems#new" do
		it "has a 200 status code" do
			get :new
			expect(response.status).to eq(200)
		end

		it "should render the new problem view" do
			get :new
			expect(response).to render_template(:new)
		end
	end

	describe "POST problems#create" do
		it "redirects to problems#show" do
			post :create, valid_params
			expect(response).to redirect_to problem_path Problem.last
		end
	end

	describe "GET problems#index" do
		it "renders the problems#index view" do
			get :index
			expect(response).to render_template(:index)
		end
		it "lists all problems" do
			problem1, problem2 = FactoryGirl.create(:problem)

		end
	end
end
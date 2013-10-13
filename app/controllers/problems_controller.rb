class ProblemsController < ApplicationController
	def new
		@problem = Problem.new
	end

	def create
		@problem = Problem.new(valid_params(params))
	    if @problem.save
	      redirect_to problem_path(@problem)
	    else
	      render :new
	    end
	end

	def show
	end

	private

	def valid_params(input)
		input[:problem].permit(:text)
	end
end
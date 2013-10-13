require 'faker'

FactoryGirl.define do
	factory :problem do |f|
    	f.text {Faker::Company.bs} 
  	end
end
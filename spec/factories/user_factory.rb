FactoryGirl.define do

	factory :user_factory do
    
		sequence(:email) { |n| "test #{n} @example.com" }
		password "password"

		trait :admin do

		  admin true

		end

	end

end
#FactoryGirl.define do
#  factory :user do
#    name "Coco"
#    email "coco@example.com"
#    password "foobar100"
#    password_confirmation "foobar100"
#  end
#end

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end

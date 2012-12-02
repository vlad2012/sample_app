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
    password "foobar10"
    password_confirmation "foobar10"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end

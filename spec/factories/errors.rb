FactoryGirl.define do
  factory :error do
    message "There was an error"
    association :project, :strategy => :build
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    plano "MyString"
    dataexame "MyString"
    dataentrega "MyString"
    laudo "MyString"
    exame nil
    consultation nil
  end
end

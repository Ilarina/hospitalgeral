# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :consulta do
    data "MyString"
    hora "MyString"
    paciente nil
    medico nil
  end
end

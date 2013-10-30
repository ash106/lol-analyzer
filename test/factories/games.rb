# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    queue_type "MyString"
    ip_earned 1
    largest_killing_spree 1
    champion_id 1
    gold_earned 1
    spell_one 1
    spell_two 1
  end
end

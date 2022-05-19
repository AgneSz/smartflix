FactoryBot.define do
 factory :movie do
   sequence(:show_id) { |n| 'show_id #{n}' }
    show_type { 'MyString' }
    title { 'MyString' }
    director { 'MyString' }
    cast { 'MyString' }
    country { 'MyString' }
    date_added { '2022-05-05' }
    release_year { 2010 }
    rating { 'MyString' }
    duration { 'MyString' }
    listed_in { 'MyString' }
    description { 'MyString' }
 end
end
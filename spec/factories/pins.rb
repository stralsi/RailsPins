FactoryGirl.define do
  factory :pin do
    image { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
    title "Test Pin"
    description "Test Pin Description"
    user_id 1
  end
end
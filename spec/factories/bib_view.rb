FactoryGirl.define do
  factory :bib_view_1, class: BibView do
    id 1
    record_num 1000001
    title "Title 1"
    association :record_metadata, factory: :record_metadata_1
  end
end

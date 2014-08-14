FactoryGirl.define do
  factory :item_view, class: ItemView do
    id 1
    location_code "ula"
  end

  factory :bib_view, class: BibView do
    id 1
    record_num 1000001
    title "Title 1"

    association :record_metadata, factory: :record_metadata_1
  end
end

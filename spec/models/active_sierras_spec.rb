require 'rails_helper'

RSpec.describe "ActiveSierra", :type => :request do
  describe "BibView" do
    before(:each) do
      @bib = FactoryGirl.build_stubbed :bib_view
      @items = FactoryGirl.build_stubbed_list(:item_view, 1)
      @bib.stub(:item_views).and_return(@items)
    end

    it "has a title" do
      expect(@bib.title).to eq("Title 1")
    end

    describe "RecordMetadata" do
      it "has a created date" do
        expect(@bib.record_metadata.creation_date_gmt.class).to eq(ActiveSupport::TimeWithZone)
      end
    end

    describe "has ItemView" do
      it "with a location" do
        expect(@bib.item_views.first.location_code).to eq("ula")
      end
    end
  end
end

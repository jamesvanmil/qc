require 'rails_helper'

RSpec.describe "ActiveSierra", :type => :request do
  describe "ActiveSierra BibView" do
    bib = FactoryGirl.build_stubbed(:bib_view_1)

    it "has a title" do
      expect(bib.title).to eq("Title 1")
    end

    describe "RecordMetadata" do

      it "has a created date" do
        expect(bib.record_metadata.creation_date_gmt.class).to eq(ActiveSupport::TimeWithZone)
      end

    end
  end
end

require 'rails_helper'

RSpec.describe "ActiveSierra", :type => :request do
  stub = FactoryGirl.build_stubbed(:bib_view)
  describe "ActiveSierra BibView" do
    it "has a title" do
      puts stub.title
    end
  end
end

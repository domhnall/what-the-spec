# spec/test_2_spec.rb

require 'rails_helper'

describe "Widgets", type: :feature do
  describe "index" do
    it "should return 200 status" do
      visit "/widgets"
      expect(page.status_code).to eq 200
    end

    it "should display the widgets index page" do
      visit "/widgets"
      within("h1") { expect(page.body).to have_content("Widgets") }
    end
  end
end

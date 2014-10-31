require 'spec_helper'

describe "showing a pin" do
  let(:author){ FactoryGirl.create(:user) }
  let(:not_author){ FactoryGirl.create(:user) }
  let(:pin){ FactoryGirl.create(:pin, user_id:author.id) }
  let(:show_pin_page){ ShowPinPage.new }

  it "has the correct pin details" do
    show_pin_page.visit_page(pin)

    expect(show_pin_page).to have_pin_details(pin)
  end

  context "when the user is logged in as the pin author" do
    before do
      show_pin_page.visit_page_as(pin, author)
    end
    it "shows the edit and delete buttons" do
      expect(show_pin_page).to have_edit_button
      expect(show_pin_page).to have_delete_button
    end
  end

  context "when the user is not logged in as the pin author" do
    before do
      show_pin_page.visit_page_as(pin, not_author)
    end

    it "does not show the edit and delete buttons" do
      expect(show_pin_page).not_to have_edit_button
      expect(show_pin_page).not_to have_delete_button
    end
  end
end
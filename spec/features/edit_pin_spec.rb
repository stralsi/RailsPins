require 'spec_helper'

context "editing a pin when logged in as the pin author" do
  let(:author){ FactoryGirl.create(:user) }
  let(:not_author){ FactoryGirl.create(:user) }
  let(:pin){ FactoryGirl.create(:pin, user: author) }
  let(:edit_pin_page){ EditPinPage.new }

  before { edit_pin_page.visit_page_as(author,pin) }

  it "updates the pin details on the show page" do
    pin.title = "Updated title"
    pin.description = "Updated description"
    show_pin_page = edit_pin_page.update_pin(pin)

    expect(show_pin_page).to have_pin_details(pin)
  end
end

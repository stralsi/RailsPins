require 'spec_helper'

describe "showing a pin" do
  let(:user){ FactoryGirl.create(:user) }
  let(:pin){ FactoryGirl.create(:pin, user_id:user.id) }
  let(:show_pin_page){ ShowPinPage.new }

  it "has the correct pin details" do
    show_pin_page.visit_page(pin)

    expect(show_pin_page).to have_pin_details(pin)
  end

  context "when the user is logged in as the pin owner" do
    before do

    end
    it "shows the edit and delete buttons"
  end
end
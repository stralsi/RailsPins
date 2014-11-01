require 'spec_helper'

describe "when not logged in" do
  let(:pin){ FactoryGirl.create(:pin) }
  let(:show_pin_page) { ShowPinPage.new }

  it "liking redirects to sign in page" do
    show_pin_page.visit_page(pin).like

    expect(current_path).to eq new_user_session_path
  end
end

describe "when logged in" do
  let(:pin){FactoryGirl.create(:pin)}
  let(:user){FactoryGirl.create(:user)}
  let(:show_pin_page){ShowPinPage.new}

  before { show_pin_page.visit_page_as(user, pin) }

  it "increases the number of likes by 1" do
    expect{show_pin_page.like}.to change{show_pin_page.number_of_likes}.by(1)
  end

  context "when already voted" do
    before {show_pin_page.like}

    it "the button is disabled" do
      expect(show_pin_page).to have_like_disabled
    end
  end
end

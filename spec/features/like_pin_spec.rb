require 'spec_helper'

describe "liking when not logged in" do
  let(:pin){ FactoryGirl.create(:pin) }
  let(:show_pin_page) { ShowPinPage.new }

  it "redirects to sign in page" do
    show_pin_page.visit_page(pin).like

    expect(current_path).to eq new_user_session_path
  end
end

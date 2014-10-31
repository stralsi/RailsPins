require 'spec_helper'

describe "trying to add a pin when not logged in" do
  let(:new_pin_page) { NewPinPage.new }
  let(:pin){ FactoryGirl.build(:pin) }

  it "redirects to sign in page" do
    new_pin_page.visit_page

    expect(current_path).to eq new_user_session_path
  end
end

describe "adding a pin when logged in" do
  let(:user){FactoryGirl.create(:user)}
  let(:pin){FactoryGirl.build(:pin)}
  let(:new_pin_page) { NewPinPage.new }
  let(:index_page) { IndexPage.new }

  before do
    new_pin_page.visit_page_as(user)
  end

  it "shows the pin on the show page" do
    show_pin_page = new_pin_page.create_pin(pin)

    expect( show_pin_page ).to have_pin_details( pin )
  end

  it "sets the current user as the author" do
    show_pin_page = new_pin_page.create_pin(pin)

    expect( show_pin_page.author ).to match("#{user.email}")
  end

  it "shows the pin on the index page" do
    new_pin_page.create_pin(pin)

    index_page.visit_page

    expect(index_page).to have_pin( pin.title )
  end
end

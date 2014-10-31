require 'spec_helper'

describe "deleting a pin" do
  let(:show_pin_page){ShowPinPage.new}
  let(:author){FactoryGirl.create(:user)}
  let(:not_author){FactoryGirl.create(:user)}
  let(:pin){FactoryGirl.create(:pin, user_id:author.id)}

  context "when logged in as the pin author" do
    before { show_pin_page.visit_page_as(author, pin) }

    it "does not show on the index page any more" #, :js => true do
      #
      # find( '#pin_delete' ).click
      # page.driver.browser.switch_to.alert.accept
      #
      # index_page = IndexPage.new
      #
      # expect(index_page).to_not have_pin(pin)
    #end
  end
end
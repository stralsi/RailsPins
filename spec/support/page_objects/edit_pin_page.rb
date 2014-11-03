class EditPinPage
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def initialize()
    @image = 'Image'
    @title = 'Title'
    @description = 'Description'
    @update_pin = 'Update Pin'
    @cancel = 'Cancel'
  end

  def visit_page(pin)
    visit edit_pin_path pin
    self
  end

  def visit_page_as(user, pin)
    login_as(user)
    visit edit_pin_path pin
    self
  end

  def update_pin(pin)
    # attach_file( @image, image_path )
    fill_in @title, :with => pin.title
    fill_in @description, :with => pin.description
    click_link_or_button @update_pin
    ShowPinPage.new
  end

end
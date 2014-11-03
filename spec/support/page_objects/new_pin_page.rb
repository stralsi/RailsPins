class NewPinPage
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def initialize()
    @image = 'Image'
    @title = 'Title'
    @description = 'Description'
    @create_pin = 'Create Pin'
    @back = 'Back'
  end

  def visit_page
    visit new_pin_path
    self
  end

  def visit_page_as(user)
    login_as(user)
    visit new_pin_path
    self
  end

  def create_pin(pin, image_path = Rails.root.join('spec', 'photos', 'test.png'))
    attach_file( @image, image_path )
    fill_in @title, :with => pin.title
    fill_in @description, :with => pin.description
    click_link_or_button @create_pin
    ShowPinPage.new
  end

end
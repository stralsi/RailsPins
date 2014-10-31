class IndexPage
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def initialize()
    @add_pin = 'Add pin'
    @sign_in = 'Sign in'
    @sign_up = 'Sign up'
    @edit_profile = 'Edit profile'
    @sign_out = 'Sign out'
  end

  def visit_page
    visit root_path
    self
  end

  def visit_page_as(user)
    login_as(user)
    visit root_path
    self
  end

  def click_add_pin
    click_link_or_button @add_pin
    NewPinPage.new
  end

  def click_sign_in
    click_link_or_button @sign_in
    SignInPage.new
  end

  def sign_up
    click_link_or_button @sign_up
    SignUpPage.new
  end

  def has_pin?(pin_title)
    has_link? pin_title
  end

end
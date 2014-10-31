class ShowPinPage
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def initialize()
    @image = '.pin_image'
    @title = '.pin_title'
    @description = '.pin_description'
    @author = '.pin_author'
    @edit = '#pin_edit'
    @delete = '#pin_delete'
  end

  def visit_page(pin)
    visit pin_path pin
  end

  def visit_page_as(pin, user)
    login_as(user)
    visit pin_path pin
  end


  def title
    find( @title ).text
  end

  def description
    find( @description ).text
  end

  def author
    find( @author ).text
  end

  def has_pin_details?(pin)
    has_title = title == pin.title
    has_description = description == pin.description
    has_author = author.match("#{pin.user.email}")

    has_title and has_description and has_author
  end

  def has_edit_button?
    has_css? @edit
  end

  def has_delete_button?
    has_css? @delete
  end
end
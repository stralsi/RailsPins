class PinOnIndex
  include Capybara::DSL

  def initialize()
    @image = '.pin_image'
    @title = '.pin_title'
    @description = '.pin_description'
    @author = '.pin_author'
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
end
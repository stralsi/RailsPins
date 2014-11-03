class SignInPage
  include Capybara::DSL

  def initialize()
    @email = 'Email'
    @password = 'Password'
    @remember_me = 'Remember me'
    @log_in = 'Log in'
    @sign_up = 'Sign up'
    @forgot_password = 'Forgot your password?'
  end

  def log_in_as(user)
    fill_in @email, :with=> user.email
    fill_in @password, :with=> user.password
    click_link_or_button @log_in
    IndexPage.new
  end
end
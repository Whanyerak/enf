require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  def login
    User.create!(
      email: 'mama@dou.fr',
      password: 'azertyuiop',
      password_confirmation: 'azertyuiop'
    )

    fill_in 'Courriel', with: 'mama@dou.fr'
    fill_in 'Mot de passe', with: 'azertyuiop'
    click_on 'Log in'
  end
end

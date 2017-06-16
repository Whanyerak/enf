require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  def login
    User.create!(
      email: 'mama@dou.fr',
      password: 'azertyuiop',
      password_confirmation: 'azertyuiop',
      first_name: 'Mamadou',
      last_name: 'Dupont',
      branch: 1
    )

    visit '/'
    fill_in 'Courriel', with: 'mama@dou.fr'
    fill_in 'Mot de passe', with: 'azertyuiop'
    click_on 'Connexion'
  end
end

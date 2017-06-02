require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "create a new event" do
    visit '/'
    login

    visit '/events'
    click_on 'Nouvel évènement'

    fill_in 'Titre', with: 'Grand camp'
    fill_in 'Lieu', with: 'Saint Amand'
    click_on 'Envoyer'

    assert_selector 'h3', text: 'Grand camp'
    assert_selector 'li', text: 'Lieu : Saint Amand'
  end
end

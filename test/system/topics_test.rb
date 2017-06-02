require "application_system_test_case"

class TopicsTest < ApplicationSystemTestCase
  test "create a new topic" do
    visit '/'
    login

    click_on 'Nouveau sujet'

    fill_in 'Titre', with: 'Eh bien le bonjour !'
    fill_in 'Description', with: 'Comment que ça va-t-il ?'
    click_on 'Nouveau sujet'

    assert_selector 'h2', text: 'Eh bien le bonjour !'
  end
end

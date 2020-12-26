 # frozen_string_literal: true

require 'application_system_test_case'

class SessionsTest < ApplicationSystemTestCase
  test 'should not login user with invalid credentials' do
    visit login_url
    fill_in 'name', with: '123'
    fill_in 'password', with: '123'
    click_on 'Login'

    assert_text 'Name or password is invalid'
  end

  test 'register and count' do
    login = '12'
    password = '12'

    visit signup_url

    fill_in 'name', with: login
    fill_in 'password', with: password
    fill_in 'password_confirmation', with: password
    click_on 'Create User'

    click_on 'Log In'
    fill_in 'name', with: login
    fill_in 'password', with: password
    click_on 'Login'

    count = all("#block_content").count

    fill_in 'title_post', with: '6 28 0 2 6'
    fill_in 'bredpost_create_post', with: '6 28 0 2 6'
    find('input[id="Send_new_post"]').click

    assert_equal count + 1, all("#block_content").count
  end

  test 'register login and logout' do
    login = '12'
    password = '12'

    visit signup_url

    fill_in 'name', with: login
    fill_in 'password', with: password
    fill_in 'password_confirmation', with: password
    click_on 'Create User'

    click_on 'Log In'
    fill_in 'name', with: login
    fill_in 'password', with: password
    click_on 'Login'

    fill_in 'title_post', with: '6 28 0 2 6'
    fill_in 'bredpost_create_post', with: '6 28 0 2 6'
    find('input[id="Send_new_post"]').click

    value = page.find('input[id="1"]').value[-1] 
    page.find('input[id="1"]').click

    assert_not_equal value, page.find('input[id="1"]').value[-1]
  end
end

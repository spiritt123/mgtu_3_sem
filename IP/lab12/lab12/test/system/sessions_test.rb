# frozen_string_literal: true

require 'application_system_test_case'

class SessionsTest < ApplicationSystemTestCase
  test 'should not login user with invalid credentials' do
    visit login_url
    fill_in 'Name', with: '123'
    fill_in 'Password', with: '123'
    click_on 'Login'

    assert_text 'Name or password is invalid'
  end

  test 'register and count' do
    login = '12'
    password = '12'

    visit signup_url

    fill_in 'Name', with: login
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_on 'Create User'

    assert_text 'User was successfully created.'
    click_on 'Back'

    fill_in 'Name', with: login
    fill_in 'Password', with: password
    click_on 'Login'

    assert_text "Logged in as Log Out\nSearch perfect number:"

    fill_in 'arr', with: '6 28 0 2 6'
    click_on 'Get result'

    assert_text "Logged in as Log Out\nSearch perfect number:\nArray: 6,28\nArray: 6\nmax length:2\nArray with max length:6,28"
  end

  test 'register login and logout' do
    login = '12345'
    password = '12345'

    visit signup_url

    fill_in 'Name', with: login
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_on 'Create User'

    click_on 'Back'

    fill_in 'Name', with: login
    fill_in 'Password', with: password
    click_on 'Login'

    assert_text "Logged in as Log Out\nSearch perfect number:"

    click_on 'Log Out'
    assert_text 'Login'
  end
end

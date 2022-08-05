require 'rails_helper'

RSpec.describe 'Login Validation', type: :system do
  describe 'Login page' do
    it 'shows the right content' do
      visit new_user_session_path
      expect(page).to have_field('Email', type: 'email')
      expect(page).to have_field('Password', type: 'password')
      expect(page).to have_selector(:link_or_button, 'Log in', type: 'submit')
    end

    it 'should redirect to the categories page if the data is correct' do
      visit new_user_session_path
      User.create(name: 'mat', email: 'sentayhu@gmail.com', password: '123456')
      page.fill_in 'Email', with: 'sentayhu@gmail.com'
      page.fill_in 'Password', with: '123456'
      expect(page).to have_field('Email', with: 'sentayhu@gmail.com')
      expect(page).to have_field('Password', with: '123456')
      click_button('Log in')
      sleep(1)
      expect(page).to have_current_path(categories_path)
    end
  end
end

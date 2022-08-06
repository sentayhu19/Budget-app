require 'rails_helper'

RSpec.describe 'Check new category page', type: :system do
  describe 'Content show by this page' do
    before(:all) do
      @user = User.create(full_name: 'Sentayhu', password: '123456a', email: 'Sentayhu@gmail.com')
    end

    before(:each) do
      visit new_user_session_path
      page.fill_in 'Email', with: 'Sentayhu@gmail.com'
      page.fill_in 'Password', with: '123456a'
      click_button 'Log in'
      sleep(1)
    end

    it 'should show the right content' do
      visit new_category_path
      expect(page).to have_field('Name')
      expect(page).to have_field('Icon')
      expect(page).to have_selector(:link_or_button, 'NEW CATEGORY')
    end

    it 'After adding c new category should show the category' do
      visit new_category_path
      page.fill_in 'Name', with: 'Electronics'
      page.fill_in 'Icon', with: 'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/452/external-electronics-home-appliance-flaticons-lineal-color-flat-icons.png'
      sleep(3)
      click_button 'ADD CATEGORY'
      sleep(1)
      visit categories_path
      sleep(3)
      expect(page).to have_content('Food')
      expect(page).to have_css("img[src*='https://img.icons8.com/external-flaticons-lineal-color-flat-icons/452/external-electronics-home-appliance-flaticons-lineal-color-flat-icons.png']")
      expect(page).to have_content('$0')
    end
  end
end

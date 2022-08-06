require 'rails_helper'
# category model
RSpec.describe Category, type: :model do
  context 'Testing validations on a single subject' do
    before(:all) do
      @user = User.create(full_name: 'John Smith', password: '123456', email: 'johnsmith@gmail.com')
    end
    subject do
      Category.create(name: 'Food', icon: 'https://picsum.photos/200', user: @user)
    end
    before { subject.save }

    it 'is valid with the inserted valid attributes' do
      expect(subject).to be_valid
    end

    it 'name must not be blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should belong to an user' do
      subject.user = nil
      expect(subject).to_not be_valid
    end
  end
end

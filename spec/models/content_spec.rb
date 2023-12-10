require 'rails_helper'

RSpec.describe Content, type: :model do
  describe 'attributes' do
    subject { Content.create(title: 'hoge', name: 'fuga') }
    it 'has the expected attributes' do
      expect(subject).to respond_to(:id)
      expect(subject).to respond_to(:title)
      expect(subject).to respond_to(:name)
    end
  end
end

require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations check' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end
end

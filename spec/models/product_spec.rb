require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should have_many :reviews }

  it 'saves products name, price, and description' do
    product = FactoryGirl.create(:product)
    product.name.should eq 'Pot'
    product.price.should eq 5
    product.description.should eq 'Great for planting plants or drinking a bunch of soup out of.'
  end
end

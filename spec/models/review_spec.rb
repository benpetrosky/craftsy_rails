require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :author }
  it { should validate_presence_of :comment }
  it { should belong_to :product }

   it 'saves reviews author and description' do
     product = FactoryGirl.create(:product)
     review = FactoryGirl.create(:review, :author => 'Megan', :comment => 'I love this product. it\'s the best', :product_id => product.id)
     review.comment.should eq 'I love this product. it\'s the best'
   end
end

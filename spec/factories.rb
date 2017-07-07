FactoryGirl.define do

   factory(:product) do
            name('Pot')
            description('Great for planting plants or drinking a bunch of soup out of.')
            price(5)

  end
  factory(:review) do
    author('Jim')
    comment('Love it.')
  end
end

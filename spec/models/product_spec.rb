require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
    before :each do
      @category = Category.create!(name: 'well fuck u then')
    end
    # validation tests/examples here
    # need 5 cases (1 per validation)
    # Good Case
    it 'should have a name, price, quantity, category' do
      @product = Product.create!(
        name: 'name',
        price: 40.00,
        quantity: 2,
        category: @category
      )
      expect(@product).to be_valid
    end
    # 4 Bad cases (1 per validation)
    # name case
    it "shouldn't have a blank name" do
      @product = Product.create(
        name: nil,
        price: 40.00,
        quantity: 2,
        category: @category
      )
      expect(@product).to_not be_valid
      expect(@product.errors[:name]).to include "can't be blank"
    end
    #price case
    it "shouldn't have a blank price" do
      @product = Product.create(
        name: 'name',
        price: nil,
        quantity: 2,
        category: @category
      )
      expect(@product).to_not be_valid
      expect(@product.errors[:price]).to include "can't be blank"
    end
    it "shouldn't have a blank quantity" do
      @product = Product.create(
        name: 'name',
        price: 40.00,
        quantity: nil,
        category: @category
      )
      expect(@product).to_not be_valid
      expect(@product.errors[:quantity]).to include "can't be blank"
    end
    it "shouldn't have a blank category" do
      @product = Product.create(
        name: 'name',
        price: 40.00,
        quantity: 2,
        category: nil
      )
      expect(@product).to_not be_valid
      expect(@product.errors[:category]).to include "can't be blank"
    end
  end
end

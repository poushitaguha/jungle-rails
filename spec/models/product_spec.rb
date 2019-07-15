require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    # validation tests/examples here

      # Check if name, price, quantity, category are present
      it 'should save to database without errors if all fields are present' do
        @category = Category.create(name: "Test Category")
        @product = Product.new(
          id: 123,
          name: "Test Product",
          description: "Test description",
          image: "image.png",
          price_cents: 25,
          quantity: 15,
          created_at: Time.now,
          updated_at: Time.now,
          category_id: @category.id
        )
        @product.save
        expect(@product).to be_valid
        # expect(@product).to_not be_valid   
        expect(@product.errors.full_messages)     
      end  

      # When name isn't present
      it 'should not save to database if name field is not present' do
        @category = Category.create(name: "Test Category")
        @product = Product.new(
          id: 123,
          name: nil,
          description: "Test description",
          image: "image.png",
          price_cents: 25,
          quantity: 15,
          created_at: Time.now,
          updated_at: Time.now,
          category_id: @category.id
        )
        @product.save
        expect(@product).to_not be_valid    
        # expect(@product).to be_valid
        expect(@product.errors.full_messages)      
      end    

      # When price isn't present
      it 'should not save to database if price field is not present' do
        @category = Category.create(name: "Test Category")
        @product = Product.new(
          id: 123,
          name: "Test Product",
          description: "Test description",
          image: "image.png",
          price_cents: nil,
          quantity: 15,
          created_at: Time.now,
          updated_at: Time.now,
          category_id: @category.id
        )
        @product.save
        expect(@product).to_not be_valid    
        # expect(@product).to be_valid    
        expect(@product.errors.full_messages)      
      end   

      # When quantity isn't present
      it 'should not save to database if quantity field is not present' do
        @category = Category.create(name: "Test Category")
        @product = Product.new(
          id: 123,
          name: "Test Product",
          description: "Test description",
          image: "image.png",
          price_cents: 25,
          quantity: nil,
          created_at: Time.now,
          updated_at: Time.now,
          category_id: @category.id
        )
        @product.save
        expect(@product).to_not be_valid    
        # expect(@product).to be_valid    
        expect(@product.errors.full_messages) 
      end   
        
      # When category isn't present
      it 'should not save to database if category field is not present' do
        @category = Category.create(name: "Test Category")
        @product = Product.new(
          id: 123,
          name: "Test Product",
          description: "Test description",
          image: "image.png",
          price_cents: 25,
          quantity: 15,
          created_at: Time.now,
          updated_at: Time.now,
          category_id: nil
        )
        @product.save
        expect(@product).to_not be_valid    
        # expect(@product).to be_valid    
        expect(@product.errors.full_messages) 
      end      

  end

end

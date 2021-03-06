require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new("brownie", 50, chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "tons", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) { brownie.add_ingredient("flour") }

    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    before(:each) do
      brownie.add_ingredient("flour")
      brownie.add_ingredient("eggs")
      brownie.add_ingredient("milk")
      brownie.mix!
    end

    it "shuffles the ingredient array" do
      expect(brownie.ingredients).not_to eq(["flour", "eggs", "milk"])
    end
  end

  describe "#eat" do
    before(:each) { brownie.eat(10) }

    it "subtracts an amount from the quantity" do
      expect(brownie.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(100) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive_messages(
        :titleize => "Chef the Great Baker")

      expect(brownie.serve).to eq("Chef the Great Baker has made 50 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end

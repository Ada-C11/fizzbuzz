require_relative 'spec_helper'

describe 'fizzbuzz' do

  it 'will return "Fizz" if given a multiple of 3' do
    [3, 6, 9].each do |mult_of_3|
      result = fizzbuzz(mult_of_3)
      expect(result).must_equal "Fizz"
    end
  end

  it "will return Buzz if given a multiple of 5" do
    [5, 10, 20].each do |mult_of_5_not_3|
      result = fizzbuzz(mult_of_5_not_3)
      expect(result).must_equal "Buzz"
    end
  end

  it "will take a nonfactor of 5 or 3 and return that number" do
    [1, 2, 4].each do |nonfactor|
      result = fizzbuzz(nonfactor)
      expect(result).must_equal nonfactor
    end
  end

  it "will give back FizzBuzz if given a mult of 3 and 5" do
    [15, 30, 45].each do |mult|
      result = fizzbuzz(mult)
      expect( result ).must_equal "FizzBuzz"
    end

  end

end
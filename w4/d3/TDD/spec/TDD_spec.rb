require 'TDD'

describe "#my_uniq" do 
  it "should accept an array as an arg" do
    expect{my_uniq([1, 2, 3])}.to_not raise_error
  end

  it "should remove duplicates in array and return new array" do
    expect(my_uniq([1, 2, 1, 3, 2, 3])).to eq([1, 2, 3])
  end 
end 

describe "Array" do
  describe "#two_sum" do
    it "should accept an array as an arg" do
      expect{[-1, 0, 2, -2, 1].two_sum}.to_not raise_error
    end

    it "should return pairs of indices that sum to zero and pairs should be in order dictionary-wise" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end
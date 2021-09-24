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


describe "#my_transpose" do
  let(:two_d_array) { [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ] }
  let(:transposed) { [ [1, 4, 7], [2, 5, 8], [3, 6, 9] ] } 

  it "should accept an array as an arg" do
    expect{my_transpose(two_d_array)}.to_not raise_error
  end

  it "should transpose array (row to column and column to row)" do
    expect(my_transpose(two_d_array)).to eq(transposed)
  end 

  it "should not use built_in method Array#transpose" do
    expect(two_d_array).to_not receive(:transpose)
    my_transpose(two_d_array)
  end 
end

describe "#stock_picker" do
  let(:stock_prices) {[20, 17, 15, 20, 23]}
  let(:stock_prices2) {[20, 17, 23, 20, 15]}

  it "should accept an array as an arg" do
    expect{stock_picker(stock_prices)}.to_not raise_error
  end

  it "should return pair of indices representing days of max profit" do 
    expect(stock_picker(stock_prices)).to eq([2, 4])
  end   

  it "should return pair of indices where first index is smaller than second index" do 
    expect(stock_picker(stock_prices2)).to eq([1, 2])
  end 
end
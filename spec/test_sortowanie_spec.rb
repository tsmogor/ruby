require 'simplecov'
SimpleCov.start
require_relative '../lib/def_sort'


describe "#sort" do
  it "should be defined" do
    expect(sort([1,2,-6,3,1],5)).to eq([-6,3,1,0.2]) 
  end
end

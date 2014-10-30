require 'simplecov'
SimpleCov.start
require_relative '../lib/det_mnozenie'


describe "#mnoz" do
  it "should be defined" do
    expect(mnoz(2,3,3,2,[0,1,2,3,4,5,6],[0,1,2,3,4,5,6])).to eq([22,28,49,64]) 
  end
end

describe "#mnoz" do
  it "should be defined" do  
    expect(mnoz(2,4,4,1,[0,1,2,3,4,5,6,7,8],[0,1,2,3,4])).to eq([30,70])
  end
end

describe "#mnoz" do
  it "should be defined" do  
    expect(mnoz(3,4,4,2,[0,9,8,7,6,5,4,3,2,1,2,3,4],[0,5,6,7,8,9,8,7,6])).to eq([206,210,94,98,74,70])
  end
end

describe "#mnoz" do
  it "should be defined" do  
    expect(mnoz(3,4,4,2,[0,9,8,7,6,5,4,3,2,1,2,3,4],[0,5,6,7,8,9,8,7,6])).to eq([206,210,84,98,74,70])
  end
end
  
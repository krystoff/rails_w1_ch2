require 'bacon'
describe Bacon do
  subject { Bacon.new }
  it "is edible" do
    Bacon.new.edible?.should be_true
  end
  it "expired!" do
    bacon = Bacon.new
    bacon.expired!
    bacon.expired.should be_true
  end
end

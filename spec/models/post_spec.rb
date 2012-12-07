require 'spec_helper'

describe Post do
  
  it "requires an amount" do
	/*debugger;1*/
	subject.should_not be_valid
	subject.title.should_not be_valid
  end
end

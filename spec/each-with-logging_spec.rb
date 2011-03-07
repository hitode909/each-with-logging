require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'logger'
require 'stringio'

describe "EachWithLogging" do
  it "write to logger" do
    io = StringIO.new
    logger = Logger.new(io)
    [1,2,3,4].each_with_logging(logger){|i|
      1
    }
    io.string.split(/\n/).length.should == 4
  end
end

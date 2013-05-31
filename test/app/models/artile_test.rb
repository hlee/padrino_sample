require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class ArtileTest < Test::Unit::TestCase
  context "Artile Model" do
    should 'construct new instance' do
      @artile = Artile.new
      assert_not_nil @artile
    end
  end
end

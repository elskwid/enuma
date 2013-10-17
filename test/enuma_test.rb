require 'helper'
require 'enuma'

class TestEnuma < MiniTest::Unit::TestCase

  def test_version
    version = Enuma.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

end

require 'helper'
require 'enuma'

class TestEnuma < Minitest::Test

  def test_version
    version = Enuma.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

end

require 'test/helper'
require 'rake/clean'

class TestRakeClean < Test::Unit::TestCase
  include Rake
  def test_clean
    assert Task['clean'], "Should define clean"
    assert Task['clobber'], "Should define clobber"
    assert Task['clobber'].prerequisites.include?("clean"),
      "Clobber should require clean"
  end
end

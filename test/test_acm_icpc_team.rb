require_relative '../src/ACMICPCTeam.rb'
require 'test/unit'
class TestACMICPCTeam < Test::Unit::TestCase
  def test_case1
    acm_icpc_team = ACMICPCTeam.new
    topic = %w[10101 11100 11010 00101]
    m = 5
    n = 4
    max, count = acm_icpc_team.solve topic, m, n
    assert_equal(5, max)
    assert_equal(2, count)
  end
end

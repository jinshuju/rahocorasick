# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/rahocorasick'

class RahocorasickTest < Test::Unit::TestCase
  def test_lookup
    assert_equal(%w[foo bar], RAhoC.new(%w[foo bar]).lookup('Hello foolish bar.'))
    assert_equal(%w[bar foo],
                 RAhoC.new(%w[foo bar]).lookup("I went to the bar to see if they served foo,\n\t but they didn't."))
    assert_equal(%w[金数据 数据], RAhoC.new(%w[数据 金数据]).lookup('金数据，人人可用的业务数据收集工具'))
  end
end

# frozen_string_literal: true

require 'test_helper'

class AsciiChartTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AsciiChart::VERSION
  end

  def test_writes_array_same_numbers
    input_array = [4, 4, 4, 4.00, 4, 4, 4, 4, 4, 4]
    assert_equal(AsciiChart.plot(input_array), '    4.00  ┼--------- ')
  end

  def test_writes_array_same_numbers_and_height_provided
    input_array = [4, 4, 4, 4.00, 4, 4, 4, 4, 4, 4]
    assert_equal(AsciiChart.plot(input_array, { height: 10 }), '    4.00  ┼--------- ')
  end
end

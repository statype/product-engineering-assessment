require "minitest/autorun"

require_relative "../lib/generators"

class TestGenerators < Minitest::Test
  def test_uniform_random_array_length
    expected_length = 12
    ura = Generators.uniformly_random_array(expected_length)
    assert_equal expected_length, ura.length
  end

  def test_uniform_random_array_minimum
    min = 10
    ura = Generators.uniformly_random_array(1000, min: min, max: 20)
    actual_min = ura.min
    assert actual_min >= min, "expected uniform_random_array to be lower bounded by #{min}, got #{actual_min}"
  end

  def test_uniform_random_array_maximum
    max = 20
    ura = Generators.uniformly_random_array(1000, min: 0, max: max)
    actual_max = ura.max
    assert actual_max <= max, "expected uniform_random_array to be upper bounded by #{max}, got #{actual_max}"
  end
end

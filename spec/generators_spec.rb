require_relative "../lib/generators"

describe Generators do
  describe ".linearly_increasing_series_with_random_noise" do
    it "must return the correct number of elements" do
      expected_length = 12
      lis = Generators.linearly_increasing_series_with_random_noise(min: 1, max: expected_length)
      expect(lis.length).to equal(expected_length)
    end

    it "must be greater than initial value + minimum noise" do
      min = 1
      min_noise = 1
      lis = Generators.linearly_increasing_series_with_random_noise(min: min, min_noise: min_noise)
      expect(lis.min).to be >= min + min_noise
    end

    it "must be less than max + maximum noise" do
      max = 10
      max_noise = 10
      lis = Generators.linearly_increasing_series_with_random_noise(max: max, max_noise: max_noise)
      expect(lis.max).to be < max + max_noise
    end
  end
end

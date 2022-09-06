module Generators
  def self.uniformly_random_array(count, min: 1, max: 9)
    Array.new(count) { rand(min...max) }
  end

  def self.linearly_increasing_series_with_random_noise(min: 1, max: 40, min_noise: 1, max_noise: 5)
    min.upto(max).map { |v| v + rand(min_noise...max_noise) }
  end
end

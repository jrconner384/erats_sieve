require 'open_integer'

# Public: An implementation of the sieve of Eratosthenes which finds all prime
# numbers up to a given limit. See the Wiki entry at http://bit.ly/1xB5peK
module EratsSieve
  # Public: Sifts a range of Integers from 2 to top to remove non-prime values.
  #
  # top - The Integer value defining the greatest number to evaluate.
  #
  # Yields each prime value as it is found.
  #
  # Returns a compact Array of prime Integers.
  def self.primes_to(top)
    return to_enum(:primes_to) unless block_given?
    integers = *(2..top)

    integers.each do |known_prime|
      next unless known_prime
      yield known_prime
      sift! integers, known_prime
      integers.compact
    end

    integers.compact
  end

  # Internal: Takes an Array of Integers called to_sift and a single Integer
  # called filter and sifts out multiples of filter. This method does not sift
  # filter out of to_sift.
  #
  # to_sift - An Array of Integers to sift multiples out of.
  # filter - An Integer used to sift values out of to_sift.
  def self.sift!(to_sift, filter)
    to_sift.count.step(by: -1, to: 0) do |index|
      to_sift[index - 2] = nil if filter.factor_of? to_sift[index - 2]
    end
  end

  private_class_method :sift!
end

require File.expand_path '../../helpers/helper', __FILE__

describe EratsSieve do
  it 'returns only numbers less than or equal to top.' do
    (1..10_000).each do |top|
      EratsSieve.primes_to top do |prime|
        prime.must_be :<=, top
      end
    end
  end
end

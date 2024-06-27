class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2])
      numbers = parts[1]
    end

    num_list = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = num_list.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    num_list.sum
  end
end


string_calculator = StringCalculator.new
string_calculator.add("-1,-3,-5")
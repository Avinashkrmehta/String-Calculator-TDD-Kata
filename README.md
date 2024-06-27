## String-Calculator-TDD-Kata:
This Ruby code implements a String Calculator that can add a list of numbers provided as a string. Here's a breakdown of its functionalities:

### Features:

Handles comma (,) and newline (\n) as delimiters by default.
Allows custom delimiters specified at the beginning of the string, enclosed by two forward slashes (//).
Ignores numbers greater than 1000.
Raises an exception for negative numbers with a list of the negative values found.
Usage Example:

```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new

puts calculator.add("") # Output: 0
puts calculator.add("1") # Output: 1
puts calculator.add("1,2") # Output: 3
puts calculator.add("1,2,3") # Output: 6
puts calculator.add("1\n2,3") # Output: 6

puts calculator.add("//;\n1;2") # Output: 3

puts calculator.add("//$\n1$2$3$1001") # Output: 6

expect { calculator.add("-1,2") }.to raise_error(NegativesNotAllowed)  # RSpec for testing
```
### Testing:

This code utilizes a testing framework (replace the example with your preferred framework). You can run the tests using the appropriate command for your chosen framework.

The tests cover various scenarios, including empty strings, single numbers, multiple numbers with default and custom delimiters, numbers greater than 1000, and negative numbers.

### Code Structure:

The code is organized into two files:

`string_calculator.rb`: Contains the StringCalculator class implementing the logic.
`spec/string_calculator_spec.rb`: Defines tests for the StringCalculator class using your testing framework.
### Error Handling:

The`NegativesNotAllowed` when negative numbers are encountered. It provides a message with a list of the negative numbers found.

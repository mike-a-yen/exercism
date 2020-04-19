=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
    def self.valid?(text)
        text, valid_input = normalize(text)
        return false unless valid_input
        digits = text.chars
        checksum = 0
        (0..digits.length-1).each do |idx|
            digit = digits[digits.length - idx - 1].to_i
            add = (idx % 2 == 1) ? apply_double(digit) : digit
            checksum += add
        end
        checksum % 10 == 0
    end

    def self.apply_double(digit)
        double = digit * 2
        double -= 9 if double > 9
        return double
    end

    def self.normalize(text)
        text = text.gsub(" ", "")
        all_digits = text.chars.all? {|c| is_digit?(c)}
        long_enough = text.length > 1
        is_valid_text = all_digits & long_enough
        return text, is_valid_text
    end

    def self.is_digit?(char)
        true if Float(char) rescue false
    end
end


puts Luhn.valid?("1234-6789")
puts Luhn.valid?("1234")
puts Luhn.valid?("059")
puts Luhn.valid?("59")
puts Luhn.valid?("0000 0")
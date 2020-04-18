=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
    def self.convert(num)
        msg = ""
        msg += "Pling" if self.is_factor?(3, num)
        msg += "Plang" if self.is_factor?(5, num)
        msg += "Plong" if self.is_factor?(7, num)
        msg = msg.empty? ? num.to_s : msg
    end

    def self.is_factor?(factor, num)
        num % factor == 0
    end
end

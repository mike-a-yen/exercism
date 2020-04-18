=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
    def self.compute(s1, s2)
        if s1.length != s2.length
            raise ArgumentError, "Unequal length!"
        end
        chars1 = s1.chars
        chars2 = s2.chars
        char_pairs = chars1.zip(chars2)
        d = char_pairs.count { |c1, c2| c1 != c2}
    end
end

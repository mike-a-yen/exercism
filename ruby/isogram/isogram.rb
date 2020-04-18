=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
    def self.isogram?(s)
        ascii_lowers = (97..122).map{ |i| i.chr }
        char_counts = Hash[*ascii_lowers.collect {|c| [c, 0]}.flatten]
        s.downcase.chars.each do |c|
            if char_counts.has_key?(c)
                char_counts[c] += 1
                return false if char_counts[c] > 1
            end
        end
        return true
    end
end

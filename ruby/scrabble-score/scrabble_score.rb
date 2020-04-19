=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble

    @@letter_score = {
            "A" => 1, "B" => 3, "C" => 3, "D" => 2,
            "E" => 1, "F" => 4, "G" => 2, "H" => 4,
            "I" => 1, "J" => 8, "K" => 5, "L" => 1,
            "M" => 3, "N" => 1, "O" => 1, "P" => 3,
            "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
            "U" => 1, "V" => 4, "W" => 4, "X" => 8,
            "Y" => 4, "Z" => 10
        }
    @@letter_score.default = 0

    def initialize(text)
        @text = text.nil? ? "" : text.upcase
    end

    def score
        scores = @text.chars.map { |c| @@letter_score[c]}
        result = scores.reduce(0, :+)
    end

    def self.score(text)
        new(text).score
    end
end

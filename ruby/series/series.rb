=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
    def initialize(series)
        @series = series
    end

    def slices(length)
        raise ArgumentError if length > @series.length
        slow = 0
        result = Array.new(@series.length - length + 1)
        while slow+length <= @series.length
            result[slow] = @series.slice(slow, length)
            slow += 1
        end
        result
    end
end

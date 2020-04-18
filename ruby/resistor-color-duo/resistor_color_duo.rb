=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
    def self.value(colors = [])
        nums_arr = self.num_lookup(colors)
        sum = 0
        
    end

    def self.num_lookup(colors)
        color_arr = [
            "Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Grey", "White"
        ]
        nums = Array.new(colors.length)
        colors.each_with_index {|color, idx| nums[idx] = color_arr.find_index(color)}
        return nums
    end
end
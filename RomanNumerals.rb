class RomanNumerals
  @numbers = {
    'units' => { 1 => 'I', 5 => 'V' },
    'tens' => { 1 => 'X', 5 => 'L' }
  }

  @digits = ['units', 'tens']

  def self.to_roman(number)
    roman = ''
    number = number.to_s.split('')
    @digits.each do |digit|
      roman&.prepend(translate(digit, number.pop.to_i))
    end
    roman
  end

  def self.to_decimal(roman)
    return "number is #{roman}"
  end

  private

  def self.translate(digit, number)
    result = ''
    next_digit = @digits[@digits.index(digit) + 1]

    if number >= 1 && number < 4
      number.times{ result += (@numbers[digit][1]) }
    elsif number == 4
      result += @numbers[digit][1] + (@numbers[digit][5])
    elsif number >= 5 && number < 9
      (result += @numbers[digit][5]) && number -= 5
      (number%5).times{result += @numbers[digit][1]} if !number.zero?
    elsif number == 9
      result += @numbers[digit][1] + @numbers[next_digit][1]
    end
    result
  end
end



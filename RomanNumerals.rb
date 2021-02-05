class RomanNumerals
  ROMANS = {
    'units' => { 1 => 'I', 5 => 'V' },
    'tens' => { 1 => 'X', 5 => 'L' },
    'hundreds' => { 1 => 'C', 5 => 'D' },
    'thousands' => { 1 => 'M', 5 => '⊽' }
  }

  DIGITS = ['units', 'tens', 'hundreds', 'thousands']

  def self.to_roman(number)
    roman = ''
    number = number.to_s.split('')
    DIGITS.each do |digit|
      roman&.prepend(translate(digit, number.pop.to_i))
    end
    roman
  end

  def self.to_decimal(roman)
    return "number is #{roman}"
  end

  def self.translate(digit, number)
    result = ''
    next_digit = DIGITS[DIGITS.index(digit) + 1]

    if number >= 1 && number < 4
      number.times{ result += (ROMANS[digit][1]) }
    elsif number == 4
      result += ROMANS[digit][1] + (ROMANS[digit][5])
    elsif number >= 5 && number < 9
      (result += ROMANS[digit][5]) && number -= 5
      (number%5).times{result += ROMANS[digit][1]} if !number.zero?
    elsif number == 9
      result += ROMANS[digit][1] + ROMANS[next_digit][1]
    end
    result
  end
end



class RomanNumerals
  ROMANS = {
    'units' => { 1 => 'I', 5 => 'V' },
    'tens' => { 1 => 'X', 5 => 'L' },
    'hundreds' => { 1 => 'C', 5 => 'D' },
    'thousands' => { 1 => 'M' }
  }

  DECIMALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
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

  def self.from_roman(roman)
    total = 0
    digits_reverse = roman.split('').reverse

    digits_reverse.each_with_index do |digit, index|
      previous_digit = index.zero? ? nil : digits_reverse[index - 1]

      if !previous_digit || (DECIMALS[digit] >= DECIMALS[previous_digit])
        total += DECIMALS[digit]
      elsif previous_digit && (DECIMALS[digit] < DECIMALS[previous_digit])
        total -= DECIMALS[digit]
      end
    end

    total
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



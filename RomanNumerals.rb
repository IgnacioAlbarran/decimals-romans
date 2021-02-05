class RomanNumerals
  @numbers = {
    'units' => { 1 => 'I', 5 => 'V' },
    'tens' => { 1 => 'X', 5 => 'L' }
  }

  @digits = [ 'units', 'tens' ]



  def self.to_roman(number)
    roman = ''
    number = number.to_s.split('')
    roman&.prepend(translate_units(number.pop.to_i))
    roman&.prepend(translate_tens(number.pop.to_i))
    roman
  end

  def self.to_decimal(roman)
    return "number is #{roman}"
  end

  private

  def self.translate_units(number)
    result = ''

    if number >= 1 && number < 4
      number.times{ result += (@numbers['units'][1]) }
    elsif number == 4
      result += @numbers['units'][1] + (@numbers['units'][5])
    elsif number >= 5 && number < 9
      (result += @numbers['units'][5]) && number -= 5
      (number%5).times{result += @numbers['units'][1]} if !number.zero?
    elsif number == 9
      result += @numbers['units'][1] + @numbers['tens'][1]
    end
    result
  end

  def self.translate_tens(number)
    result = ''

    if number >= 1 && number < 4
      number.times{ result += (@numbers['tens'][1]) }
    elsif number == 4
      result += @numbers['tens'][1] + (@numbers['tens'][5])
    elsif number >= 5 && number < 9
      (result += @numbers['tens'][5]) && number -= 5
      (number%5).times{result += @numbers['tens'][1]} if !number.zero?
    elsif number == 9
      result += @numbers['units'][1] + @numbers['tens'][1]
    end
    result
  end
end



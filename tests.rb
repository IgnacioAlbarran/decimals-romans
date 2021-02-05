require_relative 'RomanNumerals'
require 'byebug'

# TODO: Replace examples and use TDD by writing your own tests
# These are some of the methods available:
#   Test.expect(boolean, [optional] message)
#   Test.assert_equals(actual, expected, [optional] message)
#   Test.assert_not_equals(actual, expected, [optional] message)

describe 'RomanNumerals' do
  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(1)).to eq('I')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(2)).to eq('II')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(3)).to eq('III')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(4)).to eq('IV')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(5)).to eq('V')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(6)).to eq('VI')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(7)).to eq('VII')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(8)).to eq('VIII')
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.to_roman(9)).to eq('IX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(10)).to eq('X')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(11)).to eq('XI')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(14)).to eq('XIV')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(15)).to eq('XV')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(18)).to eq('XVIII')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(19)).to eq('XIX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(20)).to eq('XX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(22)).to eq('XXII')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(24)).to eq('XXIV')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(25)).to eq('XXV')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(29)).to eq('XXIX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(39)).to eq('XXXIX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(49)).to eq('XLIX')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(66)).to eq('LXVI')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(666)).to eq('DCLXVI')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(2000)).to eq('MM')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(3490)).to eq('MMMCDXC')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(4000)).to eq('M⊽')
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.to_roman(6699)).to eq('⊽MDCXCIX')
  end
end
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

  ########################

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('I')).to eq(1)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('II')).to eq(2)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('III')).to eq(3)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('IV')).to eq(4)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('V')).to eq(5)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('VI')).to eq(6)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('VII')).to eq(7)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('VIII')).to eq(8)
  end

  it 'Should convert one-digit decimals into romans' do
    expect(RomanNumerals.from_roman('IX')).to eq(9)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('X')).to eq(10)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XI')).to eq(11)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XIV')).to eq(14)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XV')).to eq(15)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XVIII')).to eq(18)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XIX')).to eq(19)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XX')).to eq(20)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XXII')).to eq(22)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XXIV')).to eq(24)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XXV')).to eq(25)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XXIX')).to eq(29)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XXXIX')).to eq(39)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('XLIX')).to eq(49)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('LXVI')).to eq(66)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('DCLXVI')).to eq(666)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('MM')).to eq(2000)
  end

  it 'Should convert two-digit decimals into romans' do
    expect(RomanNumerals.from_roman('MMMCDXC')).to eq(3490)
  end
end
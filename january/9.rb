require 'rspec'

def fraction_calculator fraction_one, fraction_two, operator
  
  case operator
    when "*" then (Rational(fraction_one) * Rational(fraction_two)).to_s
    when "/" then (Rational(fraction_one) / Rational(fraction_two)).to_s
    when "+" then (Rational(fraction_one) + Rational(fraction_two)).to_s
    when "-" then (Rational(fraction_one) - Rational(fraction_two)).to_s
  end

end

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end

# p (Rational("1/3)") * Rational("2/4")).to_s
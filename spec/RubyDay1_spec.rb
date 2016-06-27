require('ping_pong.rb')
require('title_case.rb')
require('leetspeak.rb')
require('queen_attack.rb')
require('clock_hands.rb')
require('rspec')

describe('Fixnum#ping_pong') do

  it('counts from 1 to a number x') do
    expect(2.ping_pong).to(eq([1,2]))
  end

  it('returns "ping" for multiples of 3') do
    expect(3.ping_pong).to(eq([1,2,"ping"]))
  end

  it('returns "pong" for multiples of 5') do
    expect(5.ping_pong).to(eq([1,2,"ping",4,"pong"]))
  end

  it('returns "pong" for multiples of 15') do
    expect(15.ping_pong).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
  end
end


describe ('String#title_case') do

  it('takes one word and returns in title case') do
    expect('hey'.title_case).to(eq('Hey'))
  end

  it('takes a sentence and capitalizes each word') do
    expect('yo ho yo ho'.title_case).to(eq('Yo Ho Yo Ho'))
  end
end


describe ('String#leetspeak') do

  it('returns a string as is when no Leetspeak rules apply') do
    expect("happy".leetspeak).to(eq("happy"))
  end

  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leetspeak).to(eq("3l3phant"))
  end

 it('replaces every "o" in a string with a "0"') do
    expect("boo boo".leetspeak).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    expect("I like Ike".leetspeak).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    expect("roses".leetspeak).to(eq("r0z3z"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect("sassafrass".leetspeak).to(eq("sazzafrazz"))
  end

  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end
end


describe('Array#queen_attack') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true if the coordinates are horizontally in line with each other') do
    expect([1,1].queen_attack?([1, 3])).to(eq(true))
  end

  it('is true if coordinates are vertically in line with each other') do
    expect([1,1].queen_attack?([2,1])).to(eq(true))
  end

  it('is true if coordinats are diagonally in line with each other') do
    expect([2,3].queen_attack?([3,4])).to(eq(true))
    expect([3,1].queen_attack?([5,3])).to(eq(true))
    expect([5,3].queen_attack?([3,1])).to(eq(true))
  end
end

describe('String#clock_hands') do

  it('calculates the angle of the minute hand from the minute time value.') do
    expect('3:14'.clock_hands).to(eq(84))
  end

  it('calculates the angle of the hour hand from the hour and minute time value.') do
    expect('3:14'.clock_hands).to(eq(97))
  end

  it('calculates the difference between the angle of the minute hand and the angle of the hour hand.') do
    expect('3:14'.clock_hands).to(eq(13))
  end

end

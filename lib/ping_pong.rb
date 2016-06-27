class Fixnum
  define_method(:ping_pong) do
    return_array = Array (1..self)
    return_array.map do |i|
      if i.%(15) == 0
        "ping-pong"
      elsif i.%(5) == 0
        "pong"
      elsif i.%(3) == 0
        "ping"
      else
        i
      end
    end
  end
end

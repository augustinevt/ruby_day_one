class Array
  def queen_attack?(coordinates)
    diff_x = (self[0] - coordinates[0]).abs
    diff_y = (self[1] - coordinates[1]).abs

    if self[0] == coordinates[0]
      true
    elsif self[1] == coordinates[1]
      true
    elsif diff_x == diff_y
      true
    else
      false
    end
  end
end

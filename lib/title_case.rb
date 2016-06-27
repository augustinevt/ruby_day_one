class String
  define_method(:title_case) do
    new_sentence_array = self.split(" ").map do |i|
      i.capitalize()
    end
    new_sentence_array.join(" ")
  end
end

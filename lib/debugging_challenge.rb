def get_most_common_letter(text)
    p counter = Hash.new(0)
    p [text.chars]
            text.chars.each do |char|
     p counter[char] += 1
    end
    p counter
    p counter.to_a.sort_by { |k, v| v }[-2][0]

    {}
  end

  get_most_common_letter("the roof, the roof, the roof is on fire!")
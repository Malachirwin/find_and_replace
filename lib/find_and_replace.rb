class String
  def find_and_replace(word_to_replace, word)
    array_result = []
    self.split(" ").each do |word_from_string|
      if word_from_string == word_to_replace
        array_result << word
      else
        array_result << word_from_string
      end
    end
    array_result.join(' ')
  end

  def find_all_and_replace(word_to_replace, word)
    array_result = []
    array_result = self.split(word_to_replace)
    if include?(word_to_replace)
      array_result = array_result.join(word)
    end
    if start_with?(word_to_replace)
      array_result[0] << word
    end
    if end_with?(word_to_replace)
      array_result << word
    end
    array_result
  end
end

class WordCounter
  def count_words(frase)
    f = frase.downcase.delete(".,?!:;-").split
    counts = f.group_by{|i| i}.map{|k,v| [k, v.count] }
  end
end


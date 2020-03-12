class View
  def display(notes)
    notes.each_with_index do |note, index|
      puts "#{index + 1} #{note.title}: #{note.body}"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    print "> "
    return gets.chomp.to_i - 1
  end
end

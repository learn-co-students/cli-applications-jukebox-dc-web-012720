def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(arr)
    arr.each_with_index {|x, index| puts (index + 1).to_s + ". " + x}
end

def play(arr)
    puts "Please enter a song name or number:"
    input = gets.strip
    
    if (1..arr.length).include? input.to_i
        puts "Playing " + arr[(input.to_i - 1)]
    elsif arr.include? input
        puts "Playing " + input
    else 
        puts "Invalid input, please try again"
    end

end

def exit_jukebox
    puts "Goodbye"
    return
end

def run(arr)
  def intro
    puts "Please enter a command:"
    input = gets.chomp
  end
  
  input = intro
  case input
    when "help"
      help
      run(arr)
    when "list"
      list(arr)
      run(arr)
    when "play"
      play(arr)
      run(arr)
    when "exit"
      exit_jukebox
  end
end

  
# Add your code here

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_found = false
  user_input = gets.strip
  songs_array.each_with_index do |song, index|
    if (user_input.to_i == index+1 || user_input == song)
      song_found = true
      puts "Playing #{song}"
    end
  end
  if song_found == false
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  loop do
    input = gets.strip
    case input
    when "help"
      help()
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox()
      break
    else
      puts "That is not a valid input. Type 'help' for available commands."
    end
  end
end
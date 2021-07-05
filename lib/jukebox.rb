# Add your code here
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if (input.to_i > 0 && input.to_i < songs.length() +1) || songs.include?(input)
    if input.size == 1 
      puts "Playing #{songs[input.to_i-1]}"
    else 
      puts "Playing #{input}"
    end
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def prompt
  puts "Please enter a command:"
  gets.strip
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit" do 
    if input == "help"
      help 
      input = prompt
    elsif input == "list"
      list(songs)
      input = prompt
    elsif input == "play"
      play(songs)
      input = prompt
    end
  end
  exit_jukebox
end 
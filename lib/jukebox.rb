# Add your code here
require "pry"


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song)
  song.each_with_index { |song, index| puts "#{index + 1}: #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.strip
  song_number = song_input.to_i - 1
  
  if song_number < 0 && songs.include?(song_input)
    puts "Playing #{song_input}"
  elsif song_number >= 0 && song_number < 9
    puts "Playing #{songs[song_number]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  input = ""
  
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
  
    case input 
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
      end
    end
end
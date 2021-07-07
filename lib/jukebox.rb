# Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array) 
  array.each_with_index {|item, index| puts "#{index+1}. #{item}"}
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  array.each_with_index do |item, index|
    if input == "#{index+1}" || input == item
      puts "Playing #{item}"
      return
    end
  end
  puts "Invalid input, please try again"
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    input = gets.strip
    
    if input == "list" 
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
      next
    elsif input == "exit"
      exit_jukebox
      break
    else
      puts "Invalid command! Please try again"
    end
  end
end

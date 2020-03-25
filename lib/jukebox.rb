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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.strip
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
 end

def list(songs_array)
  songs_array.each.with_index do |song, i|
     puts "#{i + 1}. #{song}"
   end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_choice = gets.strip

  if song_choice.to_i > 0 && song_choice.to_i < songs_array.length
    puts "Playing #{songs_array[song_choice.to_i - 1]}"
  elsif songs_array.include?(song_choice)
    puts "Playing #{songs_array.find{|song| song == song_choice}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
   puts "Goodbye"
end

def run(songs_array)
  loop do
     puts "Please enter a command:"
     command = gets.strip
     case command
     when 'help'
       help
     when 'list'
       list(songs_array)
     when 'play'
       play(songs_array)
     when 'exit'
       exit_jukebox
       break
     else
       puts "Invalid entry"
     end
   end
end

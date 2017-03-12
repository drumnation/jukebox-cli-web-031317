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

my_songs = {
  "Go Go GO" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/davidmieloch/.atom/.learn-ide/home/davidmieloch-41075/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/07.mp3'
}

def help()
  puts "I accept the following inputs:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(my_songs)
  song_number_hash = Hash.new
  my_songs.keys.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  if my_songs.keys.include?(input)
    system %{open "#{my_songs[input]}"}
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end

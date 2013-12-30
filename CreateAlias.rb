#! /bin/env/ruby
#Author: Carlos Feliciano Barba
#GitHub: carloscheddar
#Email: c.feliciano2009@gmail.com

# Ask for the folder name if no argument is given
if not ARGV[0]
  print "Drag the show folder to the terminal window: "    #Get folder from user
  path = gets.chomp(" \n") + "/"
else
  path = ARGV[0].chomp(" \n") + "/"
end

# show = File.basename(path).delete "\\"                   #Delete the backlashes that generate with spaces
# total_seasons = 0                                        #Variable to store total seasons(Only used for final output)
# total_episodes = 0                                       #Variable to store total episodes(Only used for final output)
# name = []

Dir.glob(path + "*") do |folder|
  complete = folder.match(/[sS]\d+[eE]\d+/)
  if complete

    episode = folder.split('/')
    season = episode[-1].to_s.match(/[sS]\d+/).to_s[1..-1]
    dir_name = "Season #{season}"

    Dir.mkdir(dir_name) unless File.exists?(dir_name)

    Dir.glob(folder + '/*') do |file|

      part = file.split('/')

      File.symlink(file, dir_name + '/' + part[-1])
    end
  end
end
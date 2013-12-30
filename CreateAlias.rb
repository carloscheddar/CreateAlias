#! /bin/env/ruby
#Author: Carlos Feliciano Barba
#GitHub: carloscheddar
#Email: c.feliciano2009@gmail.com

# Ask for the folder name and target folder if no argument is given
if not ARGV[0]
  print "Drag the show folder to the terminal window: "

  # Get folder from user
  path = gets.chomp(" \n") + "/"

  print "Drag the target folder to the terminal window: "

  # Strip the '\' to work with change dir
  target = gets.chomp(" \n").delete "\\"

# Get arguments from command line
else
  path = ARGV[0].chomp(" \n") + "/"
  target = ARGV[1]
end

# Change the directory to the one specified by the user
Dir.chdir(target)

# Loop through the show folder
Dir.glob("#{path}*") do |folder|

  # Check if the folder matches the token ex: 'S03E12'
  if complete = folder.match(/[sS]\d+[eE]\d+/)

    # Get the name of the episode by splitting it from the path
    episode = folder.split('/')[-1]

    # Get the season number by finding the token and trimming the 's' or 'S'
    season = episode.match(/[sS]\d+/).to_s[1..-1]

    puts "Creating alias for #{episode}"

    # Append the season number to the season string
    dir_name = "Season #{season}"

    # Create the Season folder unless it's already created
    Dir.mkdir(dir_name) unless File.exists?(dir_name)

    # Loop through episode folders
    Dir.glob("#{folder}/*") do |file|

      # Get the part name by splitting the path
      part = file.split('/')[-1]

      # Create the symlink in the season directory
      File.symlink(file, "#{dir_name}/#{part}")
    end
  end
end

puts "Finished alias creation please check folder on:", "#{target}"
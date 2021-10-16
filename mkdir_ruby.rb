folder = ARGV.first.to_s
folder = "/home/joord/Documents/"+folder 
system(" mkdir #{folder}")
system("git init #{folder}")

folder_gemfile = folder + "/Gemfile"
system("touch #{folder_gemfile}")
folder_env =  folder+"/.env"
system("touch #{folder_env}")
data_gemfile="source https://rubygems.org\n"+
"ruby '2.7.2'\n"+
"gem 'rubocop', '~> 0.57.2'\n"+
"gem 'rspec'\n"+
"gem 'dotenv'\n"
File.open("#{folder_gemfile}", 'w') { |file| file.write(data_gemfile) }

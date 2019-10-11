puts "C'est parti pour une nouvelle journée ! Courage !"
puts "On crée le dossier du jour!"

puts "En quelle semaine est-on ?"
print "> "
semaine = gets.chomp
puts "Et pour quel jour ?"
print "> "
jour = gets.chomp


  if Dir["THP/formation/#{semaine}"].empty?
    Dir.mkdir("THP/formation/#{semaine}")
  end
  if Dir["THP/formation/#{semaine}/#{jour}"].empty?
    Dir.mkdir("THP/formation/#{semaine}/#{jour}")
  end


puts ""
puts "Quel est le nom du projet ?"
projet = gets.chomp

Dir.mkdir("THP/formation/#{semaine}/#{jour}/#{projet}")
Dir.mkdir("THP/formation/#{semaine}/#{jour}/#{projet}/lib")
Dir.mkdir("THP/formation/#{semaine}/#{jour}/#{projet}/spec")

puts "Les fichiers suivant ont été créés dans le projet '#{projet}':"
puts "> lib"
puts "> spec"
puts ""
puts "création des fichier internes. ."
#Dir.mkdir("THP/formation/#{semaine}/#{jour}/#{projet}/.env")
#Dir.mkdir("THP/formation/#{semaine}/#{jour}/#{projet}/Gemfile")

system("touch THP/formation/#{semaine}/#{jour}/#{projet}/Gemfile")
system("touch THP/formation/#{semaine}/#{jour}/#{projet}/.env")
system("touh THP/formation/#{semaine}/#{jour}/#{projet}/.gitignore")
system("touh THP/formation/#{semaine}/#{jour}/#{projet}/README.md")

puts ""
puts "les fichiers suivant on tété créés dans le projet '#{projet}' :"
puts "> Gemfile"
puts "> .env"
puts "> .gitignore"
puts "> README.md" 
puts "Ecriture du fichier Gemfile"
File.open("THP/formation/#{semaine}/#{jour}/#{projet}/Gemfile", 'w') do |line|
  line.puts "\r" + "source 'https://rubygems.org'"
  line.puts "\r" +  "ruby '2.5.1'"
  line.puts "\r" +  "gem 'nokogiri'"
  line.puts "\r" +  "gem 'pry'"
  line.puts "\r" +  "gem 'rubocop'"
  line.puts "\r" +  "gem 'rspec'"
end

puts "Les gems ont été mises. Veuillez vérifier que toutes les gems sont en place."
puts "Git en cours suivit d'un bundle ainsi que de l'écriture du fichier 'gitignore'"

system("git init THP/formation/#{semaine}/#{jour}/#{projet}")

  File.open("THP/formation/#{semaine}/#{jour}/#{projet}/.gitignore", 'w') do |line|
    line.puts "\r" + ".env"
end

puts ""
puts "Votre fichier .gitignore est prêts à l'emplois."
puts "Avec qui travaillez vous aujourd'hui ?"
print "> "
duo = gets.chomp
puts ""

File.open("THP/formation/#{semaine}/#{jour}/#{projet}/README.md", 'w') do |line|
line.puts "\r" + "Hey ! Bienvenu dans le nouveau projet du jour !"
line.puts "\r" + "Aujourd'hui, je vais te présenter le projet en quelques lignes :"
line.puts "\r" + ""
line.puts "\r" + " Ce projet vous sera présenté par #{duo} et Paul Hennin !"
line.puts "\r" + "Bonne lecture et bon courage à toi."
end

puts "Votre fichier est prêt à l'emplois ! Bon courage pour la journée !!"

require 'csv'
require_relative 'peliculas.rb'


peliculas = []
csv = CSV.open('dvd_csv_2.csv', headers: true, header_converters: :symbol, converters: :numeric )

peliculas = csv.map(&:to_hash)

accion = []
drama = []
comedia = []
musica = []

peliculas.each do |p|
  case p[:genre]
  when 'Action/Adventure'
    accion << Accion.new(p)
  when 'Drama'
    drama << Drama.new(p)
  when 'Comedy'
    comedia << Comedia.new(p)
  when 'Music'
    musica << Musica.new(p)
  #else
   # Other.new peliculas
  end
end

puts '.....'
p accion
puts "#{musica.count} peliculas de musica existentes"
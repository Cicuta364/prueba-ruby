require 'csv'
require_relative 'peliculas.rb'


peliculas = []
csv = CSV.read('dvd_csv_2.csv', headers: true, header_converters: :symbol, converters: :numeric )

[:status, :sound, :versions, :released, :aspect, :upc, :dvd_releasedate, :id, :timestamp].each do |key|
    csv.delete(key)
  end

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
  end
end

puts '.....'
#p accion
puts "#{musica.count} peliculas de musica existentes"
puts "#{comedia.count} peliculas de musica existentes"
puts "#{drama.count} peliculas de musica existentes"
puts "#{accion.count} peliculas de musica existentes"

puts drama.estudios
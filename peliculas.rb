

class Peliculas

  attr_accessor :dvd_Title, :studio, :released, :status, :sound, :version, :price, :rating, :year, :genre, :aspect , :upc ,:dvd_releasedate, :id , :timestamp

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
   @dvd_Title = dvd_Title
   @studio = studio
   @released = released
   @status = status
   @sound = sound
   @version = version
   @price = price
   @rating = rating
   @year = year
   @genre = genre
   @aspect = aspect
   @upc = upc
   @dvd_releasedate = dvd_releasedate
   @id = id
   @timestamp = timestamp
  end
end



class Accion < Peliculas

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
    super
    @genre = 'Action'
  end
end


class Comedia < Peliculas

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
    super
    @genre = 'Comedy'
  end
end



class Drama < Peliculas

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
    super
    @genre = 'Drama'
  end
end


class Musica < Peliculas

  def initialize(dvd_Title = nil, studio = nil, released = nil, status = nil, sound = nil, version = nil, price = nil, rating = nil, year = nil, genre = nil, aspect = nil ,upc = nil, dvd_releasedate = nil, id = nil , timestamp = nil)
    super
    @genre = 'Music'
  end
end
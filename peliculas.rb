

class Peliculas

  attr_accessor :dvd_Title, :studio, :released, :status, :sound, :version, :price, :rating, :year, :genre, :aspect , :upc ,:dvd_releasedate, :id , :timestamp

  def initialize(data= {})
    @dvd_title = data[:dvd_title]
    @studio = data[:studio]
    @released = data[:released]
    @status = data[:status]
    @sound = data[:sound]
    @versions = data[:versions]
    @price = data[:price]
    @rating = data[:rating]
    @year = data[:year]
    @genre = data[:genre]
    @aspect = data[:aspect]
    @upc = data[:upc]
    @dvd_releaseDate = data[:dvd_releaseDate]
    @id = data[:id]
    @timestamp = data[:timestamp]
  end
end



class Accion < Peliculas

  def initialize(data= {})
    super
    @genre = 'Action'
  end
end


class Comedia < Peliculas

  def initialize(data= {})
    super
    @genre = 'Comedy'
  end
end



class Drama < Peliculas

  def initialize(data= {})
    super
    @genre = 'Drama'
  end
end


class Musica < Peliculas

  def initialize(data= {})
    super
    @genre = 'Music'
  end
end
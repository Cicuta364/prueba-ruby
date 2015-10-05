

class Peliculas

  attr_accessor :dvd_Title, :studio, :rating, :year, :genre, :aspect

  def initialize(data= {})
    @dvd_title = data[:dvd_title]
    @studio = data[:studio]
    @rating = data[:rating]
    @year = data[:year]
    @genre = data[:genre]
    @aspect = data[:aspect]
    @price = data[:price]
  end


  def to_s
      "#{@dvd_title} (#{@genre}) del #{@year} fue clsificada con un #{@rating}"
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
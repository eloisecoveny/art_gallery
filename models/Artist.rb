require_relative("../db/sql_runner")
require("pry")

class Artist

  attr_accessor :name, :born, :biography, :image
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @born = options["born"]
    @biography = options["biography"]
    @image = options["image"]
  end

  def save()
    sql = "INSERT INTO artists (name, born, biography, image) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@name, @born, @biography, @image]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE artists SET (name, born, biography, image) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@name, @born, @biography, @image, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM artists ORDER BY name ASC"
    artists = SqlRunner.run(sql)
    return artists.map { |artist| Artist.new(artist) }
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    artist = SqlRunner.run(sql, values)[0]
    return Artist.new(artist)
  end

  def exhibits()
    sql = "SELECT * FROM exhibits WHERE artist_id = $1"
    values = [@id]
    exhibits = SqlRunner.run(sql, values)
    return exhibits.map { |exhibit| Exhibit.new(exhibit) }
  end

  def categories()
    # Empty array for categories
    results = []
    # For each exhibit belonging to an artist
    for exhibit in exhibits()
      # Push the category name belonging to each exhibit into the results array
      results.push(exhibit.category.name)
    end
    # Return the array of categories
    return results
  end

end

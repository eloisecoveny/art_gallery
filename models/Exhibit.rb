require_relative("../db/sql_runner")

class Exhibit

  attr_accessor :title, :subtitle, :opening, :closing, :description, :artist_id, :category_id, :image
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @subtitle = options["subtitle"]
    @opening = options["opening"]
    @closing = options["closing"]
    @description = options["description"]
    @artist_id = options["artist_id"].to_i
    @category_id = options["category_id"].to_i
    @image = options["image"]
  end

  def save()
    sql = "INSERT INTO exhibits (title, subtitle, opening, closing, description, artist_id, category_id, image) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@title, @subtitle, @opening, @closing, @description, @artist_id, @category_id, @image]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE exhibits SET (title, subtitle, opening, closing, description, artist_id, category_id, image) = ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@title, @subtitle, @opening, @closing, @description, @artist_id, @category_id, @image, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM exhibits WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM exhibits ORDER BY opening ASC"
    exhibits = SqlRunner.run(sql)
    return exhibits.map { |exhibit| Exhibit.new(exhibit) }
  end

  def self.delete_all()
    sql = "DELETE FROM exhibits"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM exhibits WHERE id = $1"
    values = [id]
    exhibit = SqlRunner.run(sql, values)[0]
    return Exhibit.new(exhibit)
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    artist = SqlRunner.run(sql, values)[0]
    return Artist.new(artist)
  end

  def category()
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [@category_id]
    category = SqlRunner.run(sql, values)[0]
    return Category.new(category)
  end

  # def self.category(type)
  #   sql = "SELECT * FROM exhibits WHERE category_id = $1"
  #   values = [type]
  #   exhibits = SqlRunner.run(sql, values)
  #   return exhibits.map{ |exhibit| Exhibit.new(exhibit) }
  # end

  def long(which_time)
    Date.parse(which_time).strftime("%e %B %Y")
  end

end

require_relative("../db/sql_runner")

class Category

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO categories (name) VALUES ($1) RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE categories SET (name) = ($1) WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM categories WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM categories ORDER BY name ASC"
    categories = SqlRunner.run(sql)
    return categories.map { |category| Category.new(category) }
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    category = SqlRunner.run(sql, values)[0]
    return Category.new(category)
  end

  def exhibits()
    sql = "SELECT * FROM exhibits WHERE category_id = $1"
    values = [@id]
    exhibits = SqlRunner.run(sql, values)
    return exhibits.map { |exhibit| Exhibit.new(exhibit) }
  end

end

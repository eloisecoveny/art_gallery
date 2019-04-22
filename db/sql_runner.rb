require("pg")

class SqlRunner

  def self.run(sql, values = [])
    begin
      # db = PG.connect({dbname: "art_gallery", host: "localhost"})
      db = PG.connect({dbname: "dcih2rto6t5ct9",
        host: "ec2-50-19-127-115.compute-1.amazonaws.com",
        port: 5432, user: "fcvvucwrcntlfc", password: "9d206ab310be883a948f5b5cdffe750d0a89cf95b1120477ecedd85bcd2d1601"})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end

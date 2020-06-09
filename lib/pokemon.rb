class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?,?)", name, type)
  end
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name 
    @type = type 
    @db = db
  end
  
  def self.find(id)
    pokemon = db.execute("Select * FROM pokemon WHERE id = ?", id)
  end
end

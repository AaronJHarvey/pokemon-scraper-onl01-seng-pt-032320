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
  
 def self.find(id_num, db)
    pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num)
    
  end
  
end

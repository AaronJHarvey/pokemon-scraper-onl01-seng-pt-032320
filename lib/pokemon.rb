class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  
  def self.save(name, type, db)
    db.execute("")
end

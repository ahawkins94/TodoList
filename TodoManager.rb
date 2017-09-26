class TodoManager
  
  @@todos = ["Buy some chocolate orange", "Feed the Feraligatr"]
  
  def self.index
    @@todos
  end
  
  def self.show (id)
    @@todos[id]
  end
  
  def self.create (new_todo)
    @@todos.push << new_todo
  end
  
  def self.delete (id)
    @@todos.delete_at(id)
  end
  
  def self.update (id, new_todo)
    @@todos[id] = new_todo
  end
  
end
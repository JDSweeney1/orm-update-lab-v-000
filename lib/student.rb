require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade
  attr_reader :id

def initialize(id = nil, name, grade)
  @id, @name, @grade = id, name, grade
end

def self.create_table
  sql = <<-SQL
    INSERT TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
    )
  SQL

  DB[:conn].execute(sql)
end
end
